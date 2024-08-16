" Set compatibility to Vim only
set nocompatible
" Do not break word on midle when wrap
set linebreak
" Automaticly wrap text that extends border
set wrap
" Encoding
set encoding=utf-8
" Turn syntax highlighting on.
syntax on
" Add numbers to each line on the left-hand side.
set number
highlight LineNr ctermfg=241
highlight CursorLineNR term=bold cterm=NONE ctermfg=159 ctermbg=233
" Highlight cursor line underneath the cursor horizontally.
set cursorline
highlight CursorLine cterm=NONE ctermbg=233
" Status bar
set laststatus=2
" Display command line's tab complete options as a menu.
set wildmenu
" Set the window's title, reflecting the file currently being edited.
set title
" Enable search highlighting.
set hlsearch
" Ignore case when searching.
set ignorecase
" Incremental search that shows partial matches
set incsearch
" Turn on mouse
set mouse=a

"Netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 25

augroup InitNetrw
    autocmd!
    autocmd VimEnter * Lexplore
augroup END

" close if final buffer is netrw or the quickfix
augroup finalcountdown
 au!
 autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif
 "autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) || &buftype == 'quickfix' | q | endif
nmap - :Lexplore<cr>
 "nmap - :NERDTreeToggle<cr>
augroup END
