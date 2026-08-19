#! /bin/bash

tag=v$(date +%y.%m.%d.%H.%M)
git tag -a $tag -m "Create $tag"
git push -u origin $tag
cm
gh release create $tag --generate-notes --latest --title $tag
