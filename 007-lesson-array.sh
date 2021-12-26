Array1=(2 34 45 32)
Array2=(34 5 five)

# Array output
echo ${Array1[@]}
echo ${Array2[@]}

# Array all INDEXES output
echo ${!Array1[@]}
echo ${!Array2[@]}

# Array length
echo ${#Array1[@]}
echo ${#Array2[@]}

# Array element length
echo ${#Array1[1]}
echo ${#Array2[2]}

echo "============="
Array1[0]=299
Array2[1]=nine

echo ${Array1[@]}
echo ${Array2[@]}

echo "for i in Array1; do ..."
for i in ${!Array1[@]}; do
  echo "${Array1[$i]}"
done

