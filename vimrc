let $VIMHOME = $HOME."/.vim"

source $VIMHOME/includes/vundle.vim

source $VIMHOME/includes/basics.vim

source $VIMHOME/includes/patches.vim

source $VIMHOME/includes/colors.vim

source $VIMHOME/includes/ycm.vim

source $VIMHOME/includes/racer.vim

" source $VIMHOME/includes/syntastic.vim

source $VIMHOME/includes/text.vim

" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
