#!/bin/sh

set -x

/usr/sbin/sshd
dockerd-entrypoint.sh
