history
!100 # get your command num 100 from history
history | grep "grep"

cat query.sql | grep "id"

# when input !! and pres space you will get prev command 
# when input sudo !! and pres space you will get sudo + prev command

cat query.sql | rep "select" # zsh: command not found: rep
^rep^grep # it replace in last command and print it

# ctrl + r - type and find and ctrl + r fo move forward