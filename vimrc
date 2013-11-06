" Easy version Vimrc
"

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

Bundle 'xuhdev/SingleCompile'
Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/c.vim'
Bundle 'c9s/colorselector.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'mattn/emmet-vim'
Bundle 'vim-scripts/matchit.zip'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'Shougo/neosnippet'
Bundle 'scrooloose/nerdtree'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'ervandew/supertab'
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
Bundle 'honza/vim-snippets'
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
Bundle 'guns/ultisnips'
" <c-j> and <c-k> move to the next / previous part of the function call

" Support for Clang Complete
" requires installation of a recent version of clang.
" I did: brew install --HEAD llvm --with-clang
" with homebrew
Bundle 'Rip-Rip/clang_complete'
let g:clang_complete_auto = 0 "disalbe auto completion, alwauys <c x> <c o> to complete
let g:clang_use_library = 1
let g:clang_periodic_quickfix = 0
let g:clang_close_preview = 1
let g:clang_snippets = 1
let g:clang_snippets_engine = 'ultisnips'
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

let g:surround_no_insert_mappings=1
Bundle 'tpope/vim-surround'
Bundle 'eraserhd/vim-kiwi'

filetype plugin indent on

" =============
"  custom key
" =============
" add a new line without entering insert mode
noremap <CR> o<Esc>

" map backspce to delete a character
noremap <BS> X

" map ctrl+c and ctrl+v
noremap <C-c> y
noremap <C-v> P

" map F7 & F8 to switch between tabs
noremap <F7> :tabn
noremap <F8> :tabp

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
imap <S-CR> <End>;

" set gui font
set guifont=Monaco:h14
set guifontwide=Monaco:h14

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
let g:neocomplcache_auto_completion_start_length = 3
let g:neosnippet#snippets_directory = expand("~/.vim/snippets")
if !exists('g:neocomplcache_omni_functions')
    let g:neocomplcache_omni_functions = {}
endif
let g:neocomplcache_omni_functions.python = 'python_complete#Complete'

" Make Neocomplache and clang_complete play together
if !exists('g:neocomplcache_force_omni_patterns')
    let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_overwrite_completefunc = 1
let g:neocomplcache_force_omni_patterns.c ='[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplcache_force_omni_patterns.objc = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplcache_force_omni_patterns.objcpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:clang_complete_auto = 0
let g:clang_auto_select = 0
let g:clang_use_library = 1
let g:clang_periodic_quickfix = 0
let g:clang_snippets = 1
let g:clang_close_preview = 1
