#!/bin/sh
FILE="README.md"
echo "Prepare readme.md"
tail -n +2 "$FILE" > "$FILE.tmp" && mv "$FILE" "$FILE.back" && mv "$FILE.tmp" "$FILE"
echo "Test with pana"
pana .
echo "Publish to pub.dev"
dart pub publish
echo "Restore readme.md"
mv "$FILE.back" "$FILE"