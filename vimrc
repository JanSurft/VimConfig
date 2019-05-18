let $VIMHOME = $HOME."/.vim"

source $VIMHOME/includes/vundle.vim

" Return to last edit position when opening files (You want this!)
augroup last_edit
  autocmd!
  autocmd BufReadPost *
       \ if line("'\"") > 0 && line("'\"") <= line("$") |
       \   exe "normal! g`\"" |
       \ endif
augroup END

source $VIMHOME/includes/basics.vim

source $VIMHOME/includes/patches.vim

source $VIMHOME/includes/colors.vim

source $VIMHOME/includes/ycm.vim

source $VIMHOME/includes/racer.vim

source $VIMHOME/includes/syntastic.vim
