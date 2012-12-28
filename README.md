### Installation ###

    git clone git://github.com/changdt/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc .vimrc

### Fetch git submodules ###

    cd ~/.vim
    git submodule update --init

### Add new submodule ###

    git submodule add https://github.com/vim-script/L9.git bundle/L9
    git submodule init 
    git submodule update
    git add .
    git commit -m"Install L9 bundle as git submodule"

### Update submodule ###

    cd ~/.vim/bundle/L9
    git pull origin master
