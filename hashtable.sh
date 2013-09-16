#!/bin/bash

declare -A animals=( ["20130601"]="mosquito" ["20130602"]="cow" ["20130603"]="pig" ["20130604"]="dog" ["20130605"]="baby" ["20130606"]="snake" )

#echo "${animals["moo"]}"
for sound in "${!animals[@]}"; do echo "$sound - ${animals["$sound"]}"; done

