call plug#begin('~/.vim/plugged')

  Plug 'morhetz/gruvbox'
  Plug 'ycm-core/YouCompleteMe'
  Plug 'vim-python/python-syntax'
  Plug 'jiangmiao/auto-pairs'
  Plug 'preservim/nerdtree' 
  Plug 'nvie/vim-flake8'
  Plug 'vim-syntastic/syntastic'
  Plug 'alvan/vim-closetag'
  Plug 'mattn/emmet-vim'

call plug#end()

set number
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
filetype indent off
                
set incsearch
set hlsearch
set ignorecase
set smartcase

colorscheme gruvbox
set background=dark

syntax on
let g:python_highlight_all = 1

nnoremap <C-n> :NERDTreeToggle<CR> 
inoremap jj <ESC>
inoremap <C-v> <ESC>"+p
vnoremap <C-c> "+y

"Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
