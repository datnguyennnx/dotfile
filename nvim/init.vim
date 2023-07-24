" Neovim configuration file 
" Select all and copy and undo 
map <C-a> ggVG
map <C-c> "+y
nnoremap <C-Z> u

" enable mouse support 
set mouse=a 

" enable line numbers
set number

" enable syntax
syntax on 

" hightlight current line 
set cursorline 
:highlight Cursorline cterm=bold ctermbg=black

" Indentation using spaces 
" tabstop: width of tab character
" softtabstop: fine tunes the amount of whitespace to be added
" shiftwidth: determines the amount of whitespace to add in normal mode
" expandtab: when on use space instead of tab
" textwidth: text wrap width
" autoindent: autoindent in new line
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set textwidth=4
set expandtab
set autoindent

" show the matching part of pair [] {} and ()
set showmatch

" enable color themes
if !has('gui_running')
	set t_Co=256
endif 
" enable true colors support 
set termguicolors

" Config colorschema
let g:tokyodark_transparent_background = 0
let g:tokyodark_enable_italic_comment = 1
let g:tokyodark_enable_italic = 1
let g:tokyodark_color_gamma = "1.0"
colorscheme tokyodark
