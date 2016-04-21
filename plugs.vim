call plug#begin('~/.vim/plugged')
" On-demand loading
" ======== Interface ==========
Plug 'luizbafilho/vim-monokai'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'szw/vim-maximizer'
Plug 'luizbafilho/dracula-theme', {'rtp': 'vim/'}
Plug 'edkolev/tmuxline.vim'

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
" Plug 'Valloric/YouCompleteMe'
Plug 'jgdavey/tslime.vim'

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'benekastah/neomake'
Plug 'zchee/deoplete-go', { 'do': 'make'}

Plug 'airblade/vim-gitgutter'
" ====== Languages ==========
Plug 'fatih/vim-go'
Plug 'elixir-lang/vim-elixir'
Plug 'kchmck/vim-coffee-script'
" Add plugins to &runtimepath
call plug#end()
