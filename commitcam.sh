#!/bin/sh

PROJECT=$(basename $(git rev-parse --show-toplevel))
SHA=$(git rev-parse HEAD)

OUTDIR=~/.commitcam/$PROJECT
OUTFILE=$OUTDIR/$SHA.jpg

mkdir -p $OUTDIR
imagesnap $OUTFILE > /dev/null 2>&1