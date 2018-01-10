#!/bin/bash
set -e

cd "$(dirname "$0")"

declare -A sources targets sizes
sources=(
  ["dev"]="wikivoyage_dev.svg"
  ["alpha"]="wikivoyage_alpha.svg"
  ["beta"]="wikivoyage_beta.svg"
  ["main"]="wikivoyage.svg"
)

targets=(
  ["dev"]="devWikivoyage"
  ["alpha"]="alphaWikivoyage"
  ["beta"]="betaWikivoyage"
  ["main"]="wikivoyage"
)

sizes=(
  ["mdpi"]="48x48"
  ["hdpi"]="72x72"
  ["xhdpi"]="96x96"
  ["xxhdpi"]="144x144"
  ["xxxhdpi"]="192x192"
)

for flavour in "${!sources[@]}"; do
    for size in "${!sizes[@]}"; do
        mkdir -p ../app/src/${targets[$flavour]}/res/mipmap-$size/
        convert -density 1200 -gravity center -crop 75% -background none -resize ${sizes[$size]} ${sources[$flavour]} ../app/src/${targets[$flavour]}/res/mipmap-$size/launcher.png
    done
done
