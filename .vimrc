if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
let mapleader = ","
nnoremap ; :

source $HOME/.vim/config/bundles.vim
source $HOME/.vim/config/keys.vim
source $HOME/.vim/config/settings.vim
