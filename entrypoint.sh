#!/bin/sh -l
set -x

which curl
echo $?

$1
