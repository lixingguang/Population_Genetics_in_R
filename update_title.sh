#!/bin/bash

rmd="$1"
html="$2"
num="$3"
prefix="$4"

perl -p -i -e 's/(title\: [[:punct:]]'$prefix')[[:digit:]]*[[:punct:]]\s*/${1}'$num': /g' "$rmd.Rmd"
perl -p -i -e 's/('$rmd'\.html\">)[[:digit:]]+?\.\s*/${1}'$num'. /' $html | grep $rmd