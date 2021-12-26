example(){
  echo "2 + 2 = ?"
  read answer
  if [[ $answer == 4 ]]; then
    echo "Ok!"
  else
    echo "Error"
    echo
    example
  fi
}
example