set autoindent

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set number
set showmatch	
filetype plugin indent on

set hlsearch	
set smartcase	
set ignorecase	
set incsearch	

set shiftwidth=4
set softtabstop=4	


set ruler	

set undolevels=1000	
set backspace=indent,eol,start	

syntax on
filetype on

"Auto c and cpp file generate
"deletes a line that gets created cause of buffer

au BufNewFile *.c r ~/vimthings/template.c 
au BufNewFile *.c 1delete 
au BufNewFile *.cpp r ~/vimthings/template.cpp
au BufNewFile *.cpp 1delete 

execute pathogen#infect()
nmap <F2> :TagbarOpenAutoClose<CR>

" To use echodoc, you must increase 'cmdheight' value.

"Tab mapping
nnoremap <f8> :tabnext<CR>
nnoremap <f7> :tabprevious<CR>

"Closing characters 

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
