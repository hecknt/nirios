#!/usr/bin/python3

import argparse
import os
import shutil
import stat

parser = argparse.ArgumentParser()

parser.add_argument('lower')
parser.add_argument('upper')
parser.add_argument('output')

args = parser.parse_args()

def copy_parent_dirs(rel):
    if not os.path.isdir(os.path.join(args.output, rel)):
        if rel != '':
            copy_parent_dirs(os.path.dirname(rel))
        os.mkdir(os.path.join(args.output, rel))
        shutil.copystat(os.path.join(args.upper, rel), os.path.join(args.output, rel), follow_symlinks=False)

def copy_dir(rel):
    copy_parent_dirs(rel)

def copy_link(rel):
    copy_parent_dirs(os.path.dirname(rel))
    os.symlink(os.readlink(os.path.join(args.upper, rel)), os.path.join(args.output, rel))

def copy_file(rel):
    copy_parent_dirs(os.path.dirname(rel))
    shutil.copy2(os.path.join(args.upper, rel), os.path.join(args.output, rel), follow_symlinks=False)

def get_stat(path):
    st = os.lstat(path)
    return (st.st_mode, st.st_size, st.st_mtime, st.st_mtime_ns, st.st_uid, st.st_gid)

def compare_files(a, b):
    sa = get_stat(a)
    sb = get_stat(b)
    if sa != sb:
        return False
    with open(a, 'rb') as fa, open(b, 'rb') as fb:
        while True:
            bufa = fa.read(16*1024)
            bufb = fb.read(16*1024)
            if bufa != bufb:
                return False
            if not bufa:
                return True

def create_white(rel):
    base = os.path.basename(rel)
    copy_parent_dirs(os.path.dirname(rel))

for root, dirs, files in os.walk(args.upper):
    real_dirs = []
    real_links = []
    real_files = []
    for d in dirs:
        p = os.path.join(root, d)
        if os.path.islink(p):
            real_links.append(p)
        else:
            real_dirs.append(p)
    for f in files:
        p = os.path.join(root, f)
        if os.path.islink(p):
            real_links.append(p)
        else:
            real_files.append(p)
    for d in real_dirs:
        rel = os.path.relpath(d, args.upper)
        lower = os.path.join(args.lower, rel)
        override = False
        if not os.path.isdir(lower) or os.path.islink(lower):
            copy_dir(rel)
    for l in real_links:
        rel = os.path.relpath(l, args.upper)
        lower = os.path.join(args.lower, rel)
        if os.path.islink(lower):
            new_link = os.readlink(l)
            old_link = os.readlink(lower)
            if new_link != old_link:
                copy_link(rel)
        else:
            copy_link(rel)
    for f in real_files:
        rel = os.path.relpath(f, args.upper)
        lower = os.path.join(args.lower, rel)
        if not os.path.isfile(lower) or os.path.islink(lower):
            copy_file(rel)
        elif not compare_files(lower, f):
            copy_file(rel)

for root, dirs, files in os.walk(args.lower):
    real_dirs = []
    real_links = []
    real_files = []
    for d in dirs:
        p = os.path.join(root, d)
        if os.path.islink(p):
            real_links.append(p)
        else:
            real_dirs.append(p)
    for f in files:
        p = os.path.join(root, f)
        if os.path.islink(p):
            real_links.append(p)
        else:
            real_files.append(p)
    for d in real_dirs + real_links + real_files:
        rel = os.path.relpath(d, args.lower)
        upper = os.path.join(args.upper, rel)
        if not os.path.lexists(upper) and os.path.lexists(os.path.dirname(upper)):
            create_white(rel)
