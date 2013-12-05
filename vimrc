" Set tab to 4 spaces
set ts=4

" Set line numbers on
set number

" =============== key bindings ===============  

" Kill arrow keys
no <down> ddp " move line down
no <left> <Nop>
no <right> <Nop>
no <up> ddkP " move line up

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

" =============== vundle setup ===============  

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundle itself
Bundle 'gmarik/vundle'

" My bundles
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-easymotion'

filetype plugin indent on

" =============== color scheme =============== 

syntax on
colorscheme molokai

" molokai
let g:molokai_original=1
set background=dark
