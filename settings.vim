" ========= Appearance ================
set t_Co=256

if !has("gui_running")
   let g:gruvbox_italic=0
endif

set background=dark
colorscheme gruvbox

if has("gui_running")
    set guioptions-=T " no toolbar
    set guioptions-=m " no menus
    set guioptions-=r " no scrollbar on the right
    set guioptions-=R " no scrollbar on the right
    set guioptions-=l " no scrollbar on the left
    set guioptions-=b " no scrollbar on the bottom
    set guioptions=aiA
    set mouse=v

    if has("gui_gtk2")
      set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
    elseif has("gui_macvim")
      set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline:h14
    endif
endif


" ========= NERDTree =================
let NERDTreeIgnore = ['\.pyc$']

" ========= Vim Airline ===============
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
