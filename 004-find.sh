# Find https://youtu.be/TPRSJbtfK4M?t=4524

find . # recursive find all files and folders in current dir
find . -name query.sql # find by name
find . -type f -name query.sql # find only files by name
find . -type d -name query.sql # find only directories by name
find . -type f -iname query.sql # -iname - ignore case
find . -type f -iname "*.sql"
find . -type f -empty # find empty files
find . -type d -empty # find empty directories
find . -type f -name QUERY.sql -delete # find and delete by condition
