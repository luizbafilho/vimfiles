call plug#begin('~/.vim/plugged')
"
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-sensible'
Plug 'crusoexia/vim-monokai'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go'
Plug 'majutsushi/tagbar'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" " Add plugins to &runtimepath
call plug#end()
