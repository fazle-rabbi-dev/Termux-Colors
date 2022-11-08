#!/bin/bash

git add .
read -p msg
git commit -m "$msg"
git push