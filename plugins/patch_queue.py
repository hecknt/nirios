#
#  Copyright (C) 2021 Codethink Limited
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU Lesser General Public
#  License as published by the Free Software Foundation; either
#  version 2 of the License, or (at your option) any later version.
#
#  This library is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
#  Lesser General Public License for more details.
#
#  You should have received a copy of the GNU Lesser General Public
#  License along with this library. If not, see <http://www.gnu.org/licenses/>.
#
#  Authors:
#         Valentin David <valentin.david@codethink.co.uk>
"""
patch_queue - apply patches in the specified directory
======================================================
This plugin applies the patches found in the specified directory
to the working tree in alphabetical order.

.. attention::

   This plugin uses ``patch`` to apply the patches, as such it
   is perfectly functional on non-git repositories, unlike the
   nearly identical version from buildstream-plugins-community.

**Usage:**

.. code:: yaml

   # Specify the git_module source kind
   kind: patch_source

   # Specify the project relative path to a directory containing patches
   #
   path: path/to/patches


Reporting `SourceInfo <https://docs.buildstream.build/master/buildstream.source.html#buildstream.source.SourceInfo>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The patch_source source reports the project relative local path to the directory
containing patches as the *url*.

Further, the patch_queue source reports the `SourceInfoMedium.LOCAL
<https://docs.buildstream.build/master/buildstream.source.html#buildstream.source.SourceInfoMedium.LOCAL>`_
*medium* and the `SourceVersionType.SHA256
<https://docs.buildstream.build/master/buildstream.source.html#buildstream.source.SourceVersionType.SHA256>`_
*version_type*, for which it reports the accumulative sha256 checksum of the patch files as the *version*.

The *guess_version* of a patch source is meaningless, as it is tied instead to
the BuildStream project in which it is contained.
"""

import os
from buildstream import Source, utils

#
# Soft import of buildstream symbols only available in newer versions
#
try:
    from buildstream import SourceInfoMedium, SourceVersionType
except ImportError:
    pass


class PatchQueueSource(Source):
    BST_MIN_VERSION = "2.0"
    BST_REQUIRES_PREVIOUS_SOURCES_STAGE = True
    BST_EXPORT_MANIFEST = True

    def configure(self, node):
        node.validate_keys(Source.COMMON_CONFIG_KEYS + ["path"])
        self.path = self.node_get_project_path(
            node.get_scalar("path"), check_is_dir=True
        )
        self.fullpath = os.path.join(self.get_project_directory(), self.path)

    def preflight(self):
        self.host_patch = utils.get_host_tool("patch")

    def __get_patches(self):
        for p in sorted(os.listdir(self.fullpath)):
            yield os.path.join(self.fullpath, p)

    def get_unique_key(self):
        return [utils.sha256sum(p) for p in self.__get_patches()]

    def is_resolved(self):
        return True

    def is_cached(self):
        return True

    def load_ref(self, node):
        pass

    def get_ref(self):
        return None

    def set_ref(self, ref, node):
        pass

    def fetch(self):
        pass

    def stage(self, directory):
        with self.timed_activity("Applying patch queue: {}".format(self.path)):
            for patch in self.__get_patches():
                self.call(
                    [
                        self.host_patch,
                        "-d",
                        directory,
                        "-Np1",
                        "-i",
                        patch,
                    ],
                    fail="Failed to apply patches from {}".format(self.path),
                )

    def export_manifest(self):
        return {
            "type": "patch",
            "path": self.path,
        }

    def collect_source_info(self):

        # Report one SourceInfo for each patch in the queue
        return [
            # We only optionally support BuildStream 2.5.x. In practice, this
            # codepath will not be reached unless we are running BuildStream 2.5.x.
            #
            # pylint: disable=no-member
            self.create_source_info(
                os.path.join(self.path, patch),
                SourceInfoMedium.LOCAL,
                SourceVersionType.SHA256,
                utils.sha256sum(os.path.join(self.fullpath, patch)),
            )
            for patch in sorted(os.listdir(self.fullpath))
        ]


def setup():
    return PatchQueueSource

