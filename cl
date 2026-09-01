#! /bin/bash

PATH=/usr/local/bin:/usr/bin:/bin

set -e

command -v rit

username=$1
test -n "$username"
for repo in $(gh repo list -L 40 $username|cut -f 1); do
  rit clone https://github.com/$repo.git
done
