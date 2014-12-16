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
    set guioptions-=L
    set mouse=a

    if has("gui_gtk2")
      set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
    else
      set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline:h14
    endif
endif

" ========= NERDTree =================
let NERDTreeIgnore = ['\.pyc$']

" ========= Vim Airline ===============
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

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

" ======= Syntastic ==================
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['ruby'],'passive_filetypes': ['python'] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

" ======= Python-mode ================
let g:pymode_lint = 0
let g:pymode_lint_on_write = 0
let g:pymode_lint_unmodified = 0
let g:pymode_rope = 0

" ======= EasyMotion ================
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

" ====== YankRing ===================
nnoremap <silent> <F11> :YRShow<CR>

" ======= Vim Rspec =================
" " RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "! vagrant ssh -c 'cd /vagrant/ast && bundle exec rspec {spec}'"
