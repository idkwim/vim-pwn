autocmd BufNewFile,BufRead exploit.py set filetype=exploit
autocmd BufNewFile,BufRead expliot.py set syntax=python
autocmd BufNewFile,BufRead *.py if match(getline('$'), "\# exploit") >= 0 | set filetype=exploit | endif
autocmd BufNewFile,BufRead *.py if match(getline('$'), "\# exploit") >= 0 | set syntax=python | endif
autocmd BufNewFile,BufRead *.pwn set filetype=exploit
autocmd BufNewFile,BufRead *.pwn set syntax=python
