:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'liuchengxu/vim-clap'
" Build the extra binary if cargo exists on your system.
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
" The bang version will try to download the prebuilt binary if cargo does not exist.
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
" :Clap install-binary[!] will always try to compile the binary locally,
" if you do care about the disk used for the compilation, try using the force download way,
" which will download the prebuilt binary even you have installed cargo.
Plug 'liuchengxu/vim-clap', { 'do': { -> clap#installer#force_download() } }
" `:Clap install-binary[!]` will run using the terminal feature which is inherently async.
" If you don't want that and hope to run the hook synchorously:
Plug 'liuchengxu/vim-clap', { 'do': has('win32') ? 'cargo build --release' : 'make' }
Plug 'glepnir/dashboard-nvim'
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/shaunsingh/nord.nvim'
Plug 'https://github.com/andweeb/presence.nvim'
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

set encoding=UTF-8

call plug#end()

let g:NERDTreeDirArrowExpandable=""
let g:NERDTreeDirArrowCollapsible=""

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
colorscheme nord
