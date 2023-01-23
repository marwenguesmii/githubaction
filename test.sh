#!/bin/bash
one_file_attr_names=(url# type# size# sha512, a)

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