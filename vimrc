" Easy version Vimrc
"
"
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nobackup

set nocompatible
filetype off

if has("win32") || has("win64")
  set rtp+=$VIM\vimfiles\bundle\vundle
  call vundle#rc('$VIM\vimfiles\bundle')
else
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
endif

Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

Bundle 'xuhdev/SingleCompile'
Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/c.vim'
Bundle 'c9s/colorselector.vim'
Bundle 'kien/ctrlp.vim'

Bundle 'Raimondi/delimitMate'
let delimitMate_expand_cr = 1

Bundle 'airblade/vim-rooter.git'

Bundle 'mattn/emmet-vim'
Bundle 'vim-scripts/matchit.zip'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'Shougo/neosnippet'
Bundle 'scrooloose/nerdtree'

" Syntastic
Bundle 'cakebaker/scss-syntax.vim'
" highlight SyntasticErrorSign guifg=white guibg=red
" highlight SyntasticErrorLine guibg=red
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_enable_highlighting = 0
let g:syntastic_enable_signs = 0
let g:syntastic_enable_ballons = 0
let g:syntastic_quiet_warnings = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_java_checkers = ['checkstyle', 'javac']
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_mode_map = { 'mode': 'active',
                         \ 'active_filetypes': ['ruby', 'cpp', 'c', 'java'],
                         \ 'passive_filetypes': [''] }
let g:syntastic_java_javac_classpath = '~/Applications/adt-bundle-mac/sdk/platforms/android-19'

Bundle 'AndrewRadev/splitjoin.vim'

Bundle 'ervandew/supertab'
let g:SuperTabDefaultCompletionType="<c-n>"

Bundle 'Yggdroot/indentLine.git'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '|'



Bundle 'terhechte/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'tomtom/tcomment_vim'
Bundle 'tomtom/tlib_vim'
Bundle 'Shougo/unite.vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'kchmck/vim-coffee-script'
Bundle 'ap/vim-css-color'
Bundle 'junegunn/vim-easy-align'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'pangloss/vim-javascript'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'Lokaltog/vim-powerline'
Bundle 'thinca/vim-quickrun'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'vim-ruby/vim-ruby'
Bundle 'slim-template/vim-slim'
Bundle 'garbas/vim-snipmate'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'Shougo/vimfiler.vim'

Bundle 'jnurmine/Zenburn'
Bundle 'sjl/badwolf'
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'wesgibbs/vim-irblack'
Bundle 'jonathanfilip/vim-lucius'
Bundle 'jpo/vim-railscasts-theme'
Bundle 'ywjno/vim-tomorrow-theme'

Bundle 'jeffkreeftmeijer/vim-numbertoggle'

" Ultisnips
Bundle 'SirVer/ultisnips'
" add my personal custom snippets files to runtimepath
set runtimepath+=~/.vim/yoyokko
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Support for Clang Complete
" requires installation of a recent version of clang.
" I did: brew install --HEAD llvm --with-clang
" with homebrew
Bundle 'yoyokko/clang_complete'
let g:clang_complete_auto = 1 "disalbe auto completion, alwauys <c x> <c o> to complete
let g:clang_use_library = 1
let g:clang_periodic_quickfix = 0
let g:clang_complete_copen = 1
let g:clang_close_preview = 1
let g:clang_snippets = 1
let g:clang_snippets_engine = 'ultisnips'
let g:clang_auto_select = 1
let g:clang_use_library = 1
" let g:clang_debug = 1
" This might change depending on your installation
let g:clang_exec = '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang'
let g:clang_library_path = '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib'


" Far improved support for correct indentation for objc code in vim
Bundle "b4winckler/vim-objc"

" Adds support for :A to switch between header / implementation, and more
Bundle 'eraserhd/vim-ios.git'
" Keep compatibliy to XVim nc -> switches between implementation and interface
"cab nc A

" Better Objc Syntax highlighting
Bundle 'terhechte/cocoa.vim'
" quicker way to do list methods
"cab lm ListMethods

Bundle 'jerrymarino/xcodebuild.vim'

let g:surround_no_insert_mappings=1

Bundle 'tpope/vim-surround'
Bundle 'eraserhd/vim-kiwi'

Bundle 'klen/python-mode'
let g:pymode=1
let g:pymode_trim_whitespaces=1
let g:pymode_folding=1
let g:pymode_lint_cwindow=0
let g:pymode_rope_completion=0

Bundle 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1

filetype plugin indent on

" =============
"  custom key
" =============
" add a new line without entering insert mode
noremap <CR> o<Esc>
noremap <Space> i<Space><Esc>

" map backspce to delete a character
noremap <BS> X

" map ctrl+c and ctrl+v
noremap <C-c> y
noremap <C-v> P

" map F7 & F8 to switch between tabs
noremap <F7> :tabn
noremap <F8> :tabp
imap <F1> <Esc>
map <F1> <Esc>

" cancel searched highlight
noremap ; :nohlsearch<CR>

" navigating for long lines
map j gj
map k gk
map <UP> gk
map <DOWN> gj
"imap <UP> <ESC>gk<RIGHT>i
"imap <DOWN> <ESC>gj<RIGHT>i

" map Emac keybind in insert mode
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-a> <Home>
imap <C-e> <End>

" set encoding
set encoding=utf-8
set fileencodings=utf-8

" select ALL
map <D-A> ggVG

" Use neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_max_list = 20
let g:neocomplcache_plugin_disable = {'include_complete' : 1, 'filename_complete' : 1}
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_auto_completion_start_length = 1
let g:neosnippet#snippets_directory = expand("~/.vim/snippets")
if !exists('g:neocomplcache_omni_functions')
    let g:neocomplcache_omni_functions = {}
endif
let g:neocomplcache_force_overwrite_completefunc = 1
let g:neocomplcache_omni_functions.python = 'pythoncomplete#Complete'
let g:neocomplcache_omni_functions.java = 'eclim#java#complete#CodeComplete'

" Make Neocomplache and clang_complete play together
if !exists('g:neocomplcache_force_omni_patterns')
    let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.c ='[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplcache_force_omni_patterns.objc = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.objcpp = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.java = '\k\.\k*'
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_enable_ignore_case = 1

set completeopt=longest,menuone

if has('gui_running')
    set background=light
else
    set background=dark
endif

colorscheme solarized

set tags=tags;/
