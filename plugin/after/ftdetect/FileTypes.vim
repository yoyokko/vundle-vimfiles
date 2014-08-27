" SCSS
autocmd! BufNewFile,BufRead *.scss set filetype=scss.css

" eRuby
autocmd! BufNewFile,BufRead *.erb set filetype=eruby.html

" JSON
autocmd! BufNewFile,BufRead *.json set filetype=javascript

" GitIgnore
autocmd! BufNewFile,BufRead *.gitignore set filetype=gitignore

" ZSH
autocmd! BufNewFile,BufRead *.zsh-theme set filetype=zsh

" Nginx Config
autocmd! BufNewFile,BufRead nginx.conf set filetype=nginx

" Objective-C
autocmd! BufNewFile,BufRead *.m set filetype=objc
autocmd! BufNewFile,BufRead *.mm set filetype=objc

" Java
autocmd! BufNewFile,BufRead *.java set filetype=java

" Lua
autocmd! BufNewFile,BufRead *.lua set filetype=lua
autocmd FileType lua setlocal shiftwidth=4 tabstop=4

" Python
autocmd! BufNewFile,BufRead *.py set filetype=python
autocmd FileType python setlocal shiftwidth=4 tabstop=4

" C
autocmd FileType c setlocal shiftwidth=4 tabstop=4
autocmd FileType cpp setlocal shiftwidth=4 tabstop=4

" Java
autocmd FileType java setlocal shiftwidth=4 tabstop=4

autocmd FileType objc setlocal shiftwidth=4 tabstop=4
autocmd FileType objcpp setlocal shiftwidth=4 tabstop=4

au BufRead,BufNewFile /etc/nginx/*,*/ngx_conf/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif
autocmd FileType nginx setlocal shiftwidth=4 tabstop=4

