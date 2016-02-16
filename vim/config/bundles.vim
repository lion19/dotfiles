syntax on
colorscheme default
 
set rtp+=~/.vim/bundle/Vundle.vim/ 
call vundle#rc()
 
Bundle 'Vundle.vim'            
Bundle 'gmarik/vundle'            
Bundle 'tpope/vim-fugitive'            
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-vinegar'
Bundle 'kien/ctrlp.vim'
Bundle 'lion19/ctrlp-modified.vim'

Bundle 'nono/vim-handlebars'
Bundle 'rbright/vim-javascript'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tomasr/molokai'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdcommenter'
Bundle 'bling/vim-airline'
Bundle 'editorconfig/editorconfig-vim'

"The rest is UltiSnips support
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

filetype plugin indent on
