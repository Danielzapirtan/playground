#! /bin/bash

set -e

username=$1
test -n "$username"
for repo in $(gh repo list $username|cut -f 1); do
  rit clone https://github.com/$repo.git
done
