#!/bin/sh
THEME_FILE="./theme.toml"

npx @rose-pine/build -t template.toml

rm -rf $THEME_FILE

# Append contents in a combined file, formatted so it can be appended to the end of theme.toml
echo "$(cat ./dist/rose-pine.toml)" >> $THEME_FILE
echo "$(cat ./dist/rose-pine-moon.toml)" >> $THEME_FILE
cat ./dist/rose-pine-dawn.toml >> $THEME_FILE
