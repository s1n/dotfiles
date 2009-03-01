set nocompatible
set ignorecase
set smartcase
set incsearch
set title
set ai
set gdefault
set dictionary+=/usr/share/dict/words
set modeline
set numberwidth=6
set number
set expandtab
set shiftwidth=4
set tabstop=4
set showcmd
set nobackup
set filetype=on
set foldmethod=marker

let perl_include_pod=1
let perl_want_scope_in_variables=1
let perl_extended_vars=1
let perl_string_as_statement=1
let g:load_doxygen_syntax=1
let c_space_errors=1

inoremap <CapsLock> <Esc>
command WQ wq
command Wq wq
command W w
command Q q
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
"nnoremap <Down> <C-o>gj
"nnoremap <Up> <C-o>gk
"imap <C-a> <C-o>h
"imap <C-s> <C-o>j
"imap <C-w> <C-o>k
"imap <C-d> <C-o>l
imap <Tab> <C-n>

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%>80v.\+/
colorscheme delek

