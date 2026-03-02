#!/usr/bin/env bash

# Delete all files and folders except CNAME, make.sh, and .git
find . -maxdepth 1 ! -name '.' ! -name 'CNAME' ! -name 'make.sh' ! -name '.nojekyll' ! -name '.git' -exec rm -rf {} +

# Copy all files and folders from ../via-app/dist except the definitions folder
rsync -a --exclude='definitions' ../via-app/dist/ .

# Copy all files and folders from ../keyboards-binepad/dist to ./definitions
rsync -a ../keyboards-binepad/dist/ ./definitions
