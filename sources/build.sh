#!/bin/sh
set -e

mkdir -p ../fonts/otf ../fonts/ttf

echo "Generating static TTF"
fontmake -g Dots.glyphs -i -o ttf -f --output-dir ../fonts/ttf/ -a

echo "Post processing static TTF"
ttfs=$(ls ../fonts/ttf/*.ttf)
for ttf in $ttfs
do
	gftools fix-dsig -f $ttf;
	gftools fix-hinting $ttf
	mv "$ttf.fix" $ttf
done

echo "Generating static OTFs"
fontmake -g Dots.glyphs -i -o otf -f --output-dir ../fonts/otf/ -a

echo "Post processing static OTFs"
otf=$(ls ../fonts/otf/*.otf)
for otf in $otf
do
	gftools fix-dsig -f $otf
done

rm -rf master_ufo/ instance_ufo/ ../fonts/ttf/*backup*.ttf 