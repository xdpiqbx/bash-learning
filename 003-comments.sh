#! /bin/bash
echo 'start'

# one line comments

: '
multi line
comment
comment
comment
'

cat << heredoc
doc line 1
doc line 1
doc line 1
doc line 1
heredoc

echo 'end'
