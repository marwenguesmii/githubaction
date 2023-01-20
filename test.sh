#!/bin/bash
IFS=', ' read -r -a attribut_names <<< "version, releaseDate"
IFS=', ' read -r -a attribut_values <<< "§§è, fds"
for i in "${!attribut_names[@]}"; do
echo "___"
echo "${attribut_names[i]}: ${attribut_values[i]}" >> testac.yaml

done
echo "*****"
cat testac.yaml