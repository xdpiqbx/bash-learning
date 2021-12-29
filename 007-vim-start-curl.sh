curl -O https://raw.githubusercontent.com/amigoscode/spring-boot-react-fullstack/master/src/main/java/com/amigoscode/demo/student/Student.java

curl -O https://raw.githubusercontent.com/amigoscode/javascript/master/app/examples/5.classes/classes.js

# VIM

# to enter in command mode press :

:set number
:syntax on
:q! # quit from vim

# ----------------------------------- Navigation

           gg
            ▲
            K
0 ^ b   ◄ H   L ►   w $ 
            J
            ▼
            G

#     ▲
#     K
# ◄ H   L ►
#     J
#     ▼

# gg - go to beginning of the file
# 0 - beginning of the line
# ^ - go to first symbol of the line after white spaces
# b - back for 1 word
# w - forward for 1 word
# $ - end of the line
# G - end of the file

# { - up for 1 sentens
# } - down for 1 sentens

# 41 gg - (number of line gg) jump to specific line

# ----------------------------------- Insert mode

# i - goto insertt mode https://youtu.be/TPRSJbtfK4M?t=7196
# esc - return to command mode

# i - insert directly where cusor
# a - append after cusor (from next symbol)
# o - insert mode after current line (from next line)
# O - insert mode before current line (from prev line)
# A - insert in the end of line (append to line)

# u - like ctrl+z
# uu - undo all

# ctrl + r - redo