#!/bin/bash

awk 'BEGIN { last = "" } { if ($1 == last) { printf "\\n" $2; } else { printf "\n" $1 "\t" $2; last = $1; }} END { printf "\n"; }' | tail -n +2
