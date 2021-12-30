# bash-learning

## intall and change to ZSH

https://youtu.be/TPRSJbtfK4M?t=976

```bash
echo $SHELL
# /bin/bash

chsh -s /bin/zsh
```

https://youtu.be/TPRSJbtfK4M?t=1476

<!-- hotkeys in terminal -->

ctrl + a - move to begin of line
ctrl + e - move to the ent of line
alt + c - forward for 1 word
alt + b - back for 1 word
alt + d - del word forward
alt + backspace - del word back

https://youtu.be/TPRSJbtfK4M?t=3682

---

## [The Ultimate vimrc](https://github.com/amix/vimrc)

mongodb+srv://max_creator:Ua7C43CFVUuPksCg@sbi-bots.lx7px.mongodb.net/sf-hr-happy-birthdays-production?retryWrites=true&w=majority

---

## VIM

:wq - write and quit
:q! - quit without save

---

## VIM Navigation

```code
           gg
            {
            ▲
            K
0 ^ b   ◄ H   L ►   w $
            J
            ▼
            }
            G
```

`gg` - go to beginning of the file

`0` - beginning of the line

`^` - go to first symbol of the line after white spaces

`b` - back for 1 word

`w` - forward for 1 word

`$` - end of the line

`G` - end of the file

`{` - up for 1 sentens

`}` - down for 1 sentens

`42gg` - (number of line gg) jump to specific line

---

## [Insert mode](https://youtu.be/TPRSJbtfK4M?t=7196)

`esc` - return to command mode

`i` - insert directly where cusor

`a` - append after cusor (from next symbol)

`o` - insert mode from next line

`O` - insert mode from prev lines

`A` - insert in the end of line (append to line)

---

## VIM Cut/Delete like `ctrl + x`

```code
           dgg
            ▲

d0 db   ◄   dd   ►   dw d$

            ▼
            dG
```

`dgg` - del all from coursor to the begin of file, like ctrl + x

`dd` - delete line, like ctrl + x

`8d`d - del next 8 lines, like ctrl + x

`d0` - delete to begining of the line (from coursor), like ctrl + x

`db` - delete word (from coursor to the beginning), like ctrl + x

`dw` - delete word (from coursor to the end), like ctrl + x

`d$` - delete to the end of the line (from coursor), like ctrl + x

`dG` - del all from coursor to the end of file, like ctrl + x

---

`p` - paste

`u` - undo like ctrl+z

`uu` - undo all
