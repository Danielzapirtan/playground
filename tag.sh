#! /bin/bash

tag=v$(date +%y.%m.%d.%H.%M)
rit tag -a $tag -m createTag
rit push -u origin $tag
ph createTag
