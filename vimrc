" =============== Tabs ===============

set smartindent

" Set default tabs to 4 spaces
set softtabstop=4
set shiftwidth=4
set expandtab

" Toggle tabs between 4 spaces or tabs
function ToggleTab()
    if &expandtab
        set softtabstop=0
	set shiftwidth=8
	set noexpandtab
    else
	set softtabstop=4
        set shiftwidth=4
        set expandtab
    endif
endfunction

" =============== Line numbers ===============

set number

" =============== Key bindings ===============  

" Kill arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" Toggle tab type
:nnoremap <F9> :call ToggleTab() <CR>

" =============== Color scheme =============== 

syntax on
set background=dark
