set nocompatible
set ignorecase
set smartcase
set incsearch
set title
set smartindent
set autoindent
set gdefault
set dictionary+=/usr/share/dict/words
set modeline
set numberwidth=6
set number
set expandtab
set shiftwidth=3
set tabstop=3
set showcmd
set nobackup
set filetype=on
set foldmethod=marker
set paste
set ruler
"set digraph
syntax on

function ToggleMatchParen()
    if exists("g:loaded_matchparen")
        :NoMatchParen
        :echo 'MatchParen plugin turned off'
    else
        :DoMatchParen
        :echo 'MatchParen plugin turned on'
    endif
endfunction 

let perl_include_pod=1
let perl_want_scope_in_variables=1
let perl_extended_vars=1
let perl_string_as_statement=1
let g:load_doxygen_syntax=1
let c_space_errors=1
let loaded_matchparen=0
let &titleold=getcwd()

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
map <F2> :call ToggleMatchParen()<CR>

colorscheme delek
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%>80v.\+/

" --------------------
" OmniCppComplete
" --------------------
" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

"taglist settings
nnoremap <F12> :!ctags -R --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>
nnoremap <F8> :TlistToggle<CR>
let Tlist_Auto_Open = 0
let Tlist_Display_Prototype = 1
let Tlist_Display_Tag_Scope = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Use_Right_Window = 1
let Tlist_Enable_Fold_Column = 0
