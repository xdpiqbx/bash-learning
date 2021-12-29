# Grep - https://youtu.be/TPRSJbtfK4M?t=4983
# Grep - global regular expression printq

grep -r "regexp" folder # recursive search regexp in files 
grep -rn "regexp" folder # recursive search regexp in files + number of line
grep -rni "regexp" folder # recursive search regexp in files + number of line + case insensitive
grep -rni -A 3 "regexp" folder # and 3 lines after result line
grep -rni -B 1 "regexp" folder # and 1 line before result line
grep -rni -A 3 -B 1 "regexp" folder # together

grep -rni -A 3 -B 1 "[A-Za-z]{3, 5}" folder