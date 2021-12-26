:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()


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
