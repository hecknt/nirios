#! /bin/bash

set -eu
# set -x

# Unset DEFAULT_HOSTNAME
value_str DEFAULT_HOSTNAME "(none)"

# Module signing
remove MODULE_SIG
remove MODULE_SIG_ALL
value_str MODULE_SIG_KEY ""

# TODO: enable this when we have persistent certs
# /keys/linux-module-cert.crt is provided by downstream
# if [ -f /keys/linux-module-cert.crt ]; then
#     enable MODULE_SIG
#     value_str SYSTEM_TRUSTED_KEYS /keys/linux-module-cert.crt
#     # Building with MODULE_SIG_KEY is not reproducible
#     value_str MODULE_SIG_KEY ""
#     # We sign modules separately
#     remove MODULE_SIG_ALL
#     # Instead we use lsm=lockdown on command line
#     remove MODULE_SIG_FORCE

#     # sha512 signing only
#     remove MODULE_SIG_SHA1
#     remove MODULE_SIG_SHA224
#     remove MODULE_SIG_SHA256
#     remove MODULE_SIG_SHA384
#     enable MODULE_SIG_SHA512
#     value_str MODULE_SIG_HASH "sha512"

#     enable SECURITY_LOCKDOWN_LSM
#     enable SECURITY_LOCKDOWN_LSM_EARLY
# else
#     remove MODULE_SIG
# fi
