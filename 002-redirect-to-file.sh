#! /bin/bash
echo '> - will create file and write this string' > 002-file.txt
echo '>> - will append to file' >> 002-file.txt
echo 'this str will rewrite all file' > 002-file.txt

# here you will write something else to file from term then press ctrl+d
cat >> 002-file.txt