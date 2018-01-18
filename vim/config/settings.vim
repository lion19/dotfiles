" Fonts
set gfn=Source\ Code\ Pro\ Semibold:h13
color solarized
syntax on

set shellpipe=>
""" jacobs crosshairs
set background=dark
highlight CursorLine   cterm=NONE ctermbg=darkgray ctermfg=NONE guibg=black guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=darkgray ctermfg=NONE guibg=black guifg=NONE
nnoremap <C-c> :set cursorline! cursorcolumn!<CR>
"""

" Convert tabs to spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Handle long lines appropriately
set formatoptions=qrn1
set textwidth=99999
autocmd FileType py set textwidth=99999

" Show whitespace characters for tabs and spaces
set list
set listchars=tab:▸\ ,trail:·

" C, C++, and Java files have 2 spaces per tab
for ext in ["c", "cpp", "java","py"]
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
"search for visually selected text with //
vnoremap // y/<C-R>"<CR>

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
set undolevels=1000
set undodir=~/temp/undodir
set undofile
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
au BufRead,BufNewFile *.ts set filetype=typescript
au BufRead,BufNewFile *.tsx set filetype=typescript

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
" autocmd QuickFixCmdPre botright cwindow
autocmd QuickFixCmdPost *grep* botright cwindow
"autocmd QuickFixCmdPost cclose *
" autocmd QuickFixCmdPre leftabove cwindow
"autocmd QuickFixCmdPost botright copen
" 
"set noexpandtab " Make sure that every file uses real tabs, not spaces
set expandtab
set shiftround  " Round indent to multiple of 'shiftwidth'
"set smartindent " Do smart indenting when starting a new line
" 
"set noexpandtab " Make sure that every file uses real tabs, not spaces
set expandtab
set shiftround  " Round indent to multiple of 'shiftwidth'
"set smartindent " Do smart indenting when starting a new line
"set autoindent  " Copy indent from current line, over to the new line
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
".vimrc
"map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType js noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType xml noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType xml vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
"to indent xml
"filetype indent on
"set smartindent
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
vmap <Leader>w <Esc>:call VisualHTMLTagWrap()<CR>
function! VisualHTMLTagWrap()
  let tag = input("Tag to wrap block: ")
  if len(tag) > 0
    normal `>
    if &selection == 'exclusive'
      exe "normal i</".tag.">"
    else
      exe "normal a</".tag.">"
    endif
    normal `<
    exe "normal i<".tag.">"
    normal `<
  endif
endfunction
let g:flow#enable = 0
"for vertical Gdiff in fugitive
set diffopt+=vertical
let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'
let g:syntastic_javascript_checkers = ['eslint']

"func GitGrep(...)
  "let save = &grepprg
  "set grepprg=git\ grep\ -n\ $*
  "let s = 'grep'
  "for i in a:000
    "let s = s . ' ' . i
  "endfor
  "exe s
  "let &grepprg = save
  "rightbelow cwindow
"endfun
"command -nargs=? G call GitGrep(<f-args>)
"func GitGrepWord()
  "normal! "zyiw
  "call GitGrep('-w -e ', getreg('z'))
"endf
"nmap <C-x>G :call GitGrepWord()<CR>
" autocmd FileType qf nnoremap <buffer> <CR> <CR>:cclose<CR>

function! HighlightRepeats() range
  let lineCounts = {}
  let lineNum = a:firstline
  while lineNum <= a:lastline
    let lineText = getline(lineNum)
    if lineText != ""
      let lineCounts[lineText] = (has_key(lineCounts, lineText) ? lineCounts[lineText] : 0) + 1
    endif
    let lineNum = lineNum + 1
  endwhile
  exe 'syn clear Repeat'
  for lineText in keys(lineCounts)
    if lineCounts[lineText] >= 2
      exe 'syn match Repeat "^' . escape(lineText, '".\^$*[]') . '$"'
    endif
  endfor
endfunction

command! -range=% HighlightRepeats <line1>,<line2>call HighlightRepeats()
