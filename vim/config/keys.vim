" Ignore F1
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"map <F12> :syntax sync fromstart<cr>
map <F12> :COLORSCROLL

" Ctrl-a and Ctrl-D to split and vertical split
nnoremap <C-d> :split<cr>
"nnoremap <C-a> :vsplit<cr>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-j> <C-w><C-j>
:" Map Ctrl-A -> Start of line, Ctrl-E -> End of line
:map <C-a> <Home>
:map <C-e> <End>

" Leader-w to save
map <leader>w :w!<cr>

" Leader-q to quit
map <leader>q :q<cr>
map <leader>p :'<,'>%!python -m json.tool<cr>

" Leader-/ to clear the search buffer
nmap <silent> <leader>/ :nohlsearch<cr>

" Leader-m to open the current file in Marked
nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>

" Leader-rh to transition from the old Ruby hash syntax to the new one
map <leader>rh :%s/:\([^ ]*\)\(\s*\)=>/\1:/g<CR>
map <leader>cf 0V$%<leader>cc
map <leader>df 0V$%<leader>d

" Leader-S to sort CSS properties
"nnoremap <leader>S ?{<cr>jV/^\s*\}?$<cr>k:sort<cr>:noh<cr>

" Leader-y to toggle relative numbering
function ToggleNumbering()
  if (&number)
    set nonumber
    set relativenumber
  else
    set norelativenumber
    set number
  endif
endfunction
nnoremap <leader>y :call ToggleNumbering()<cr><cr>

" Leader-W to remove trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>
" Leader-I to set foldmethod to indent
nnoremap <leader>I :set foldmethod=indent<cr>

" Q to execute the recorded macro
nmap Q @q

" Z to format the current paragraph or selection
vmap Z gq
nmap Z gqap

" w!! to save a file with sudo
cmap w!! w !sudo tee % >/dev/null
noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabprev<CR>
noremap ,S "0p
vnoremap ,S "0p
autocmd BufRead *.coffee inoremap ^X^H# X<c-h>^X^H#
nnoremap <silent> <Leader>b :TagbarToggle<CR>
vnoremap // y/<C-R>"<CR>
map <Leader>m :CtrlPModified<CR>
map <Leader>M :CtrlPBranch<CR>
"Rest is UltiSnips support
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
