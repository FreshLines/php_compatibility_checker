#!/bin/bash
process=""
for dir in "$@"
do
  process+="$dir "
done

./vendor/bin/phpcs -p $process --standard=PHPCompatibility | sed '/.*mysql_.*/c\' | sed '/.*minified.*/c\'
