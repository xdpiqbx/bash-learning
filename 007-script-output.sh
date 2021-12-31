#! /bin/bash
# chmod +x ./main.sh

# file 1 for output
# file 2 for output errors
ls -al 1>007-file-1-ok.txt 2>007-file-2-error.txt

# all error you will see in terminal
ls -al > 007-file-1-ok.txt

# all output and errors to one file
ls -al > 007-file.txt 2>&1
