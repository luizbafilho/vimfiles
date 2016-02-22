call plug#begin('~/.vim/plugged')
" On-demand loading
" ======== Interface ==========
Plug 'crusoexia/vim-monokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ======== Project ===========
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'tpope/vim-obsession' " Dependency for vim-prosession
Plug 'dhruvasagar/vim-prosession'

" ======= Vim improvments ===
Plug 'vim-scripts/bufkill.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'sickill/vim-pasta'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'Raimondi/delimitMate'
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'

Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-repeat' "Dependency for vim-easyclip
Plug 'svermeulen/vim-easyclip'

" ====== Languages ==========
Plug 'fatih/vim-go'
" Add plugins to &runtimepath
call plug#end()
