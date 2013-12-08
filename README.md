#Insltall

        git clone git://github.com/lihe757/dotvim.git ~/.vim
        git clone https://github.com/lihe757/vundle.git ~/.vim/bundle/vundle
        cd ~/.vim
        git submodule init
        git submodule sync
        git submodule update

#Configuration
        
        ln -s ~/.vim/vimrc ~/.vimrc

#Install configured bundles

    Launch vim , run :BundleInstall
