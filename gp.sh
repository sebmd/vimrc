#!/bin/bash

DATA=$(date +%F-%T)

git add -A && git commit -m $DATA
git push
