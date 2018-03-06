#!/bin/bash
set -e

cd "$(dirname "$0")"

declare -A sources targets sizes splash_sizes
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

splash_sizes=(
  ["mdpi"]="128x128"
  ["hdpi"]="192x192"
  ["xhdpi"]="256x256"
  ["xxhdpi"]="384x384"
  ["xxxhdpi"]="512x512"
)

for size in "${!sizes[@]}"; do
    for flavour in "${!sources[@]}"; do
        mkdir -p ../app/src/${targets[$flavour]}/res/mipmap-$size/
        convert -density 1200 -gravity center -crop 75% -background none -resize ${sizes[$size]} ${sources[$flavour]} ../app/src/${targets[$flavour]}/res/mipmap-$size/launcher.png
    done
    convert -density 1200 -gravity center -crop 75% -background none -resize ${splash_sizes[$size]} wikivoyage.svg ../app/src/wikivoyage/res/drawable-$size/w_nav_mark.png
done
