set autoindent

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set number      
set showmatch	

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

"Auto c file gen

autocmd FileType c call IoStream()
fu! IoStream()
    if line("$") == 1
        call append(0, "#include <stdio.h>")
        call append(1, "")
        call append(2, "int main()")
        call append(3, "{")
        call append(4, "")
        call append(5, "    return 0;")
        call append(6, "}")
    endif
endfu

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