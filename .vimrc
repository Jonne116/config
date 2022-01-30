let g:ale_disable_lsp = 1

call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ghifarit53/tokyonight-vim'
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'vim-airline/vim-airline'
call plug#end()
set termguicolors
let g:airline#extensions#ale#enabled = 1

let g:tokyonight_style = "storm"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

let g:ale_sign_column_always = 1


let g:ale_fixers = {
 \ 'javascript': ['eslint'],
 \ 'rust': ['rls']
 \ }
let g:ale_linters = {'rust': ['cargo', 'rls'], 'javascript': ['eslint']}
let g:ale_rust_rls_toolchain = 'stable'

filetype plugin indent on
syntax on
set number
set t_ut=
set expandtab
set shiftwidth=2
set laststatus=2
let g:coc_disable_startup_warning = 1
colorscheme tokyonight
map <C-f> :Files <CR>
nnoremap <C-d> :Explore <CR>
nnoremap <C-g> :Buffers <CR>
nnoremap <C-h> :bb <CR>
nnoremap <C-l> :bn <CR>
set hidden
map ö {
map ä }
