#!/bin/bash
input='url# type# size# sha512,a'
IFS=',' read -r -a files_attribut_names <<< "$input"
echo "${files_attribut_names[0]}"
echo "$one_file_attr_names"
one_file_attr_values=(ba mar barcha)
for j in "${!one_file_attr_names[@]}"; do
if [ "$j" -eq "0" ]; then
cat <<EOF >>test.yaml
  - ${one_file_attr_names[j]}: ${one_file_attr_values[j]}
EOF
else
echo "else"
cat <<EOF >>test.yaml
    ${one_file_attr_names[j]}: ${one_file_attr_values[j]}
EOF
fi
done