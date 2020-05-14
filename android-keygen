#!/bin/bash
# Script to generate private keys
#
# Reference: https://wiki.lineageos.org/signing_builds.html
#
# How-To:
# Run this script from the root directory of ROM source.
# When prompted for password, just press enter.
#
# Warning:
# Signing builds will fail if you enter a password instead of
# leaving it blank while generating the key.

subject='/C=US/ST=California/L=Mountain View/O=Android/OU=Android/CN=Android/emailAddress=android@android.com'
mkdir ~/androidkeys
for x in releasekey platform shared media networkstack testkey; do \
    ./development/tools/make_key ~/androidkeys/$x "$subject"; \
done
