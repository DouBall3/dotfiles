" Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'edkolev/promptline.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'

" All plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Set indent size to 4 spaces
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

" Set linenumbers
set number

" Escape delay fix
set timeoutlen=1001 ttimeoutlen=0

" Set color scheme to Nord
colorscheme nord

" Let vim-airline use powerline fonts
let g:airline_powerline_fonts=1

" NERDTree settings
nnoremap <silent> <F1> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 " Use Shift + i to toggle

" CtrlP settings
let g:ctrlp_show_hidden=1
