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
let g:UltiSnipsExpandTrigger="<C-CR>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"

Bundle 'Valloric/YouCompleteMe'
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

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

set completeopt=longest,menuone

if has('gui_running')
    set background=light
else
    set background=dark
endif

colorscheme solarized

set tags=tags;/
