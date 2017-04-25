#!/bin/bash

FILE="$(date +%Y-%m-%d)-$(basename $1)"
cp $1 _posts/$FILE
git add $1 _posts/$FILE
git commit $1 _posts/$FILE -m "publish $FILE"
git push
