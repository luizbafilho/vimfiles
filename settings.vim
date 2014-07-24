" ========= Appearance ================
" ========= Vim Airline ===============
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set t_Co=256
syntax on
colorscheme monokai

if has("gui_running")
    set guioptions-=T " no toolbar
    set guioptions-=m " no menus
    set guioptions-=r " no scrollbar on the right
    set guioptions-=R " no scrollbar on the right
    set guioptions-=l " no scrollbar on the left
    set guioptions-=b " no scrollbar on the bottom
    set guioptions=aiA
    set mouse=v
endif
