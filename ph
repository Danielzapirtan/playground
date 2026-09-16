#! /bin/bash

set -e

cat $0

: ${MESSAGE:=defaultMessage}
test -n "$MESSAGE"
echo "$MESSAGE"|wc -w|grep -q "^1$" || true

command -v rit

rit add .
rit commit -m "$MESSAGE" || true
rit push
rit status
bat.sh
