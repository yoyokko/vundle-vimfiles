ln -s vundle-vimfiles .vim
ln -s .vim/vimrc .vimrc
ln -s .vim/gvimrc .gvimrc
git clone git://github.com/gmarik/vundle.git .vim/bundle/vundle
vim +BindleInstall +qall
