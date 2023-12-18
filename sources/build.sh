#!/bin/sh
set -e

echo "Build with gftools builder"
gftools builder builder.yaml

echo "Slice into Roman and Italic VF (as Google Fonts currently doesn't support slnt or ital axes)"
fonttools varLib.instancer "../fonts/variable/Nunito[ital,wght].ttf" ital=0 wght=200:1000 --update-name-table -o "../fonts/variable//Nunito[wght].ttf"
fonttools varLib.instancer "../fonts/variable/Nunito[ital,wght].ttf" ital=1 wght=200:1000 --update-name-table -o "../fonts/variable/Nunito-Italic[wght].ttf"

echo "Fix name ID 25"
gftools gen-stat "../fonts/variable/Nunito-Italic[wght].ttf" --axis-order 'wght' 'ital' --inplace

echo "Fix Italic bits"
python3 fix.py

echo "Complete"
