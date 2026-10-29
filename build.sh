#!/usr/bin/env bash
# Wraps src/store.html in a full document for GitHub Pages.
set -e
{ echo '<!doctype html><html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">'
  sed -n '1,/<\/style>/p' src/store.html
  echo '</head><body>'
  sed -n '/<\/style>/,$p' src/store.html | tail -n +2
  echo '</body></html>'; } > index.html
