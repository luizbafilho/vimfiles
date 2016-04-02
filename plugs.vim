call plug#begin('~/.vim/plugged')
" On-demand loading
" ======== Interface ==========
Plug 'crusoexia/vim-monokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'szw/vim-maximizer'

" ======== Project ===========
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'tpope/vim-obsession' " Dependency for vim-prosession
Plug 'dhruvasagar/vim-prosession'
Plug 'ludovicchabant/vim-gutentags'
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
Plug 'kana/vim-textobj-user' "Dependency for vim-textobj-rubyblock
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'Valloric/YouCompleteMe'

Plug 'airblade/vim-gitgutter'
" ====== Languages ==========
Plug 'fatih/vim-go'
Plug 'elixir-lang/vim-elixir'
Plug 'kchmck/vim-coffee-script'
" Add plugins to &runtimepath
call plug#end()
