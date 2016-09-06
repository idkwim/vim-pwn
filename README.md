# vim-pwn

VIM plugin that helps to use [pwntools](https://github.com/Gallopsled/pwntools)
quickly and easily.

---
Usage
----

_vim-pwn_ detects python exploit scripts whose file extension is `.pwn`
```
$ vi test.pwn
```

_vim-pwn_ also can detect a python exploit script when `# exploit` is written in the
last line of the python script even though the file extension is `.py`.

_vim-pwn_ generates a template:
```python
from pwn import *

# r = remote('X', X)
r = process([''])
```
, and cursor is automatically set to the argument of `process` call.

If you don't want this template, put a following line to your `.vimrc`:
```vim
let g:pwn_template = 0
```

---
Shortcuts
---------

- \<leader\>r : Execute the script (you can come back with `fg` command after
  finishing the execution)
- \<leader\>b : Put `gdb.attach(r)` to the current line
- \<leader\>p : Put `pause()` to the current line
- \<leader\>s : Put `r.send()` to the next line, and set cursor to the argument
- \<leader\>e : Put `res = r.recv()` to the next line, and set cursor to the argument
- \<leader\>a : Put `res = r.recvuntil()` to the next line, and set cursor to the argument
- \<leader\>i : Put `print res` to the next line
- \<leader\>g : Put `gdb.attach(r, ''' ''')` to the next line, and set cursor to
  the script argument
- \<leader\>m : Comment the current line

---
In-Progress
