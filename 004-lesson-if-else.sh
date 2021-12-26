#!/bin/bash

echo "Age? "
read age

# -lt - < less then
# -gt - > grate then
# -le - <= less then equal
# -ge - >= grate then equal
# -eq - == equal

if [[ $age -ge 0 ]] && [[ $age -lt 12 ]]; then
    echo "To small"
  elif [[ $age -ge 12 ]] && [[ $age -lt 18 ]]; then 
    echo "Teenager"
  elif [[ $age -ge 18 ]] && [[ $age -lt 60 ]]; then 
    echo "Adult"
  else
    echo "To old"
fi