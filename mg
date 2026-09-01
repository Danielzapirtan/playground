#! /bin/bash

set -e

cat $0

: ${BRANCH:=extend}
: ${MAIN:=main}
: ${TARGET:=$MAIN}

rit switch $BRANCH
rit status|grep -q "^Your branch is up to date"
rit switch $MAIN
rit status|grep -q "^Your branch is up to date"
rit merge -m Merge$RANDOM $BRANCH
ph
rit status
tag.sh $TARGET
rit switch $BRANCH
rit status
