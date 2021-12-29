# touch - change file timestamps
touch query.sql # create file -> query.sql
mv query.sql folder # move query.sql to folder
mv query.sql . # move query.sql to current folder
rm query.sql # remove query.sql
rm query-*.sql # remove query-*.sql
echo "select * from customer;"
echo "select * from customer;" > query.sql # > rewrite file

# cat - concatenate files and print on the standard output
cat query.sql
echo "select * from shop;" >> query.sql # >> append to file

# Less Head & Tail - https://youtu.be/TPRSJbtfK4M?t=4020

# opposite of more
less query.sql # paginate file output
head query.sql # start of file output
tail query.sql # end of file output

# cp - copy files and directories
# https://youtu.be/TPRSJbtfK4M?t=4263
cp query.sql query-copy.sql
cp *.sql new_name # copy all sql files to directory new_name
cp -r new_name folder # copy content of new_name to folder
