# HOW TO : UBUNTU

- back up your vim settings
- eg. via `mv .vim .vim.$(date +%d_%m_%Y).bak` and `mv .vimrc .vimrc.$(date +%d_%m_%Y).bak`
- clone this repo into your home via `git clone https://github.com/JanSurft/VimConfig.git ~/.vim`
- clone vundle into your .vim via `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
- start vim
- then execute the cmd `:PluginInstall` this might take a while (especially YouCompleteMe)

## FOR C Autocompletion
Do enable auto completion (including C languages)

    cd ~/.vim/bundle/YouCompleteMe
    ./install.py --clang-completer
    
If this fails refer to https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64 for detailed explenation

Finished


