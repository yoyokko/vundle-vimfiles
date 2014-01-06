**This Vim configurations base form [ywjno/vundle-vimfiles](https://github.com/ywjno/vundle-vimfiles)**

My personal Vim configurations and some plugins which I used in iOS/Python/MardDown.

I put Vim related settings in `plugin/settings/Settings.vim`, and isolate other plugins' settings in `plugin/settings` directory.

you can link your `~/.vimrc` to any one of them as you wish :)

## Usage

### Installation and Requisites: (Max OS X Only)

1. BACKUP your `.vim` directory and `.vimrc` first.(IMPORTANT!)

2. `cd ~` to change directory to your home directory if your like.

3. copy files to your home directory:

        git clone git://github.com/yoyokko/vundle-vimfiles.git

4. make a symbolic link `.vim` to `vundle-vimfiles` that you just cloned, or just rename it to `.vim` also be fine:

        ln -s vundle-vimfiles ~/.vim

5. link the vimrc to

        ln -s ~/.vim/vimrc ~/.vimrc

6. if you use GUI version VIM, such as MacVim or GVim, you can also link to `.gvimrc`:

        ln -s ~/.vim/gvimrc ~/.gvimrc

7. Setup [Vundle](https://github.com/gmarik/vundle)

        git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

9. you may need to install `ack` or `silver searcher` first if you use `ack.vim`.

        # install ack on mac
        brew install ack

10. make sure /Applications/Xcode.app exists, if not, link it to your xcode.

        ln -s YourPathToXcode /Applications/Xcode.app

### Install bundles:

Launch `vim`, run `:BundleInstall`  (or `vim +BundleInstall +qall` for CLI lovers)

### Update bundles:

Launch `vim`, run `:BundleInstall!`

### Features and Key Mappings:

1. Resize splited windows automatically, so that you  get a bigger editing room if you're working with a smaller screen. (stole from [Gary Bernhardt](https://github.com/garybernhardt))

2. Toggle between working mode and presentation mode by `<leader>z`, but only work in GUI version Vim. You can check [here](http://blog.eddie.com.tw/2012/03/14/switch-to-presentation-mode/) to see how it looks like. (stole from [Mike Skalnik](https://github.com/skalnik))

3. some usually used key mappings in normal mode:

    a. `<F1>` to enter normal mode as `<Esc>`.

    b. `<F2>` to toggle NERDTree on and off.

    c. `<F4>` to toggle Tagbar window.

    d. `<F7>` to switch to previous tab, and `<F8>` to the next tab.

    e. hit `<ctrl>p` will launch a quick window to match keywords from your current working directory, not only file name, but also path name. And `<ctrl>w u` will match from your MRU(Mostly Recent Used) files, which is also frequently used.

    f. hit `<leader>` twice to toggle comment on and off. ('\' called leader in vim)

    g. `<tab>` and `<shift><tab>` to increase and decrease the syntax identation.

    h. `<D-'>` and `<D-">` to goto next and previous parameter when using ultisnipts.

    i. `<C-CR>` to show clang auto completetion list which ignor input case.

    j. `<4>` to end of the line. Same as `<S-4>`.

    k. `<;>` to cancel search highlight.

    l. `<c-e><c-a><c-n><c-p><c-f><c-b>` in insert mode to goto end of line, head of line, next line, previous line, next word, previous word.

    m. `<Space>` to insert a space in normal mode.

4. Remove tailing whitespace automatically while saving.

## FAQ

A: if you can not found `ctags` command, just find your ctags path and replace my settings in `plugin/settings/Ctags.vim` file:

    let g:tagbar_ctags_bin = '/your/path/to/ctags'

and [Exuberant Ctags](http://prdownloads.sourceforge.net/ctags/ctags-5.8.tar.gz) is recommended.


B: How to use clang_complete to complete objective-c? [Reference](http://objvimmer.com/blog/2012/08/17/objective-c-code-completion-in-vim/)

Use this script to generate the .clang_complete file. [Script](https://github.com/yoyokko/Tools/blob/master/clang_complete/clang_complete.py)

C: How to define your custom completetion snippets.

Open `~/.vim/yoyokko/UltiSnips/YourLanguage.snippets` file to write your custom snippets. UltiSnips do have buildin snippets in `~/.vim/bundle/ultisnips/UltiSnips/`.
