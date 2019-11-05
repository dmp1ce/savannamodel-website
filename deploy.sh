#!/bin/sh

# Helpful for syncing files from generated Hakyll site

if [ -z "$1" ]; then
    echo "Provide a Hakyll site directory to deploy from."
    echo "Example: ./deploy ~/projects/savannamodel-hakyll"
    exit 1
fi

rsync -av "$1/_site/" docs/ --delete
