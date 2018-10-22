#!/bin/sh

# Helpful for syncing files from generated Hakyll site
# Example: ./deploy ~/projects/savannamodel-hakyll

rsync -av "$1/_site/" docs/ --delete
