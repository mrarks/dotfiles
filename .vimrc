" Theme and colours
syntax enable                     " syntax highlighting on by default
set background=dark
colorscheme solarized
hi Normal guibg=NONE ctermbg=NONE
set laststatus=2                  " Always show lightline

" Uncomment the following two lines to line number background colors
"highlight LineNr ctermbg=darkgrey
"highlight CursorLineNr ctermbg=grey

" Basic settings
set number relativenumber     " relative line numbers
set nocompatible              " no vi compatible mode
filetype off                  " required for Vundle

" Vundle plugin stuff starts here
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()           " all plugins must be added after this line

Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'jiangmiao/auto-pairs'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-syntastic/syntastic'
Plugin 'rust-lang/rust.vim'

call vundle#end()            " all plugins must be added before this line
filetype plugin indent on    " required
" Vundle plugin stuff ends here

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o  " disable automatic comment insertion on new line

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
