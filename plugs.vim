call plug#begin('~/.config/nvim/plugged')
" On-demand loading
" ======== Interface ==========
Plug 'drmingdrmer/vim-tabbar'
Plug 'crusoexia/vim-monokai'
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
Plug 'justinmk/vim-sneak'
Plug 'sickill/vim-pasta'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'Raimondi/delimitMate'
Plug 'tomtom/tcomment_vim'

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'benekastah/neomake'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'airblade/vim-gitgutter'
" ====== Languages ==========
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
" Add plugins to &runtimepath
call plug#end()
