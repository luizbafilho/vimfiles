" ========= Appearance ================
set t_Co=256

set background=dark
set nohlsearch
color monokai
set cursorline
set mouse=a
set clipboard=unnamed
runtime macros/matchit.vim
if has("gui_running")
    set guioptions-=T " no toolbar
    set guioptions-=m " no menus
    set guioptions-=r " no scrollbar on the right
    set guioptions-=R " no scrollbar on the right
    set guioptions-=l " no scrollbar on the left
    set guioptions-=b " no scrollbar on the bottom
    set guioptions-=L

    if has("gui_gtk2")
      set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
    else
      set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline:h15
    endif
endif

" NEOVIM
autocmd! BufWritePost * Neomake
let g:neomake_error_sign = {
            \ 'text': '❯❯',
            \ 'texthl': 'ErrorMsg',
            \ }
hi MyWarningMsg ctermbg=3 ctermfg=0
let g:neomake_warning_sign = {
            \ 'text': '❯❯',
            \ 'texthl': 'MyWarningMsg',
            \ }
let g:deoplete#enable_at_startup = 1

" ========= NERDTree =================
let NERDTreeIgnore = ['\.pyc$']

" set laststatus=2

" ======== Folding ====================
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" ========= Trailing ==================
autocmd FileType ruby,haml,eruby,yaml,html,javascript,sass,cucumber set ai sw=2 sts=2 et
autocmd FileType python set sw=4 sts=4 et
autocmd BufRead *.md  set ai formatoptions=tcroqn2 comments=n:&gt;
autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:&gt;
autocmd BufWritePre * :%s/\s\+$//e " strip trailing whitespace"

" ======= EasyMotion ================
" nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
" let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


" CTRL P
let g:ctrlp_custom_ignore = 'deps\|_build\|vendor'

" Vim Go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1

let NERDTreeMapOpenVSplit='v'

let g:neocomplete#enable_at_startup = 1
set completeopt-=preview
" Plugin key-mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

set shell=/bin/bash

" Tabline colors
hi TabLineFill gui=none guifg=#E8E8E3 guibg=#2D2E27
hi TabLineSel  gui=none guifg=black guibg=#E6DB74

let g:sneak#streak = 1
let g:sneak#s_next = 1
let g:sneak#absolute_dir = 1
let g:sneak#use_ic_scs = 1

nmap f <Plug>Sneak_s
nmap F <Plug>Sneak_S
xmap f <Plug>Sneak_s
xmap F <Plug>Sneak_S
omap f <Plug>Sneak_s
omap F <Plug>Sneak_S
