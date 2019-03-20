#!/bin/bash

set -e

bundle exec jekyll build
echo "Project built. Now deploying..."
read -p "Athena username: " username

if ! kinit -f -l 10m ${username}; then
  if command -v rsync &>/dev/null; then
    echo "Deploying site with rsync"
    rsync -aPz _site/ ${username}@athena.dialup.mit.edu:/mit/next/web_scripts/root/
  else
    echo "rsync not available, falling back to scp (slower)"
    scp -r _site/ ${username}@athena.dialup.mit.edu:/mit/next/web_scripts/root/
  fi
else
  scp -o GSSAPIDelegateCredentials=true -r _site/* ${username}@athena.dialup.mit.edu:/mit/next/web_scripts/root/
  kdestroy
fi

echo "Deploy success!"
