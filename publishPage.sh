#!/bin/bash

FILE="$(date +%Y-%m-%d)-$(basename $1)"
cp $1 _posts/$FILE
git add _posts/$FILE
git commit _posts/$FILE -m "publish $FILE"
git push
