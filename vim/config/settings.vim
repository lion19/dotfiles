" Fonts
set gfn=Source\ Code\ Pro\ Semibold:h13
color solarized
syntax on

set shellpipe=>

" Convert tabs to spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Handle long lines appropriately
set formatoptions=qrn1
set textwidth=79

" Show whitespace characters for tabs and spaces
set list
set listchars=tab:▸\ ,trail:·

" C, C++, and Java files have 4 spaces per tab
for ext in ["c", "cpp", "java"]
  execute 'au FileType ' . ext . ' set expandtab'
  execute 'au FileType ' . ext . ' set shiftwidth=2'
  execute 'au FileType ' . ext . ' set softtabstop=2'
  execute 'au FileType ' . ext . ' set tabstop=2'
endfor

" Setup indent guides
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" Reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" Use 'normal' regex handling in searches
nnoremap / /\v
vnoremap / /\v

set autoindent
set autowrite
set backspace=indent,eol,start
set copyindent
set colorcolumn=80
set cursorline
set encoding=utf-8
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set modelines=0
set nobackup
set nocompatible
set noerrorbells
set noswapfile
set nowrap
"set relativenumber
set number
set ruler
set scrolloff=3
set showcmd
set showmatch
set showmode
set smartcase
set splitbelow
set splitright
set ttyfast
set undofile
set undolevels=1000
set vb t_vb=
set visualbell
set wildignore=*.swp,*.bak,*.pyc,*.class
set wildmenu
set wildmode=list:longest
" TCK custom
let coffee_indent_keep_current = 1
" filetype to etension mappings
au BufRead,BufNewFile *.coffee set filetype=coffee
au BufRead,BufNewFile *.hbs set filetype=html
au BufRead,BufNewFile *.md set filetype=markdown

let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0
"let g:ctrlp_mruf_exclude = '.*dist.*|.*COMMIT_EDITMSG.*|.*fugitiveblame.*|*/.git/*,/tmp/.*\|/temp/.*' " MacOSX/Linux
let g:ctrlp_mruf_save_on_update = 1
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '.*dist.*',
  \ 'file':  '.*COMMIT_EDITMSG.*|.*fugitiveblame.*|*/.git/*,/tmp/.*\|/temp/.*'
  \ }
" Gundo
nnoremap <F5> :GundoToggle<CR>
set background=dark
" fugitive
autocmd QuickFixCmdPost *grep* cwindow
" 
"set noexpandtab " Make sure that every file uses real tabs, not spaces
set expandtab 
set shiftround  " Round indent to multiple of 'shiftwidth'
set smartindent " Do smart indenting when starting a new line
set autoindent  " Copy indent from current line, over to the new line
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tn :tabnew<CR>
syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
set foldlevel=2
"setlocal foldmethod=syntax
"setlocal foldlevel=99
"set directory "~/tmp,/var/tmp,/tmp,~/temp"
"YM specific
"inoremap  :tabnew<CR>
let g:CoffeeAutoTagIncludeVars=1
let g:tagbar_type_coffee = {
    \ 'ctagstype' : 'coffee',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'm:methods',
        \ 'f:functions',
        \ 'v:variables',
        \ 'f:fields',
    \ ]
\ }
"airline config
let g:airline_section_c ='%t'
let NERDTreeHijackNetrw = 1

