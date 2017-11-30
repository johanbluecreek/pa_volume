#!/bin/bash

vol=$2
name=$1

pa_volume | grep -i $name | awk '{ printf "pa_volume \"";for(i=2; i<=(NF-1); i++) printf "%s",$i (i==(NF-1)?"\""ORS:OFS) }' | sed "s/$/ $vol/" | bash
pa_volume | grep -i $name
