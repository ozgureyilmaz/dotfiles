set shell=/bin/bash

" Plug

call plug#begin()

" Rust
Plug 'simrat39/rust-tools.nvim'
Plug 'rust-lang/rust.vim'

" Solidity
 Plug 'tomlion/vim-solidity'

" Debugger and Debugging Tools
Plug 'rcarriga/nvim-dap-ui'
Plug 'neovim/nvim-lspconfig'
Plug 'mfussenegger/nvim-dap'
Plug 'puremourning/vimspector'

" General Language Support
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'github/copilot.vim'

" Markdown Support and Live Preview
Plug 'shime/vim-livedown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" Vim Session Management 
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-obsession' 

" Other
Plug 'junegunn/vim-easy-align'
Plug 'vim-scripts/renumber.vim'
Plug 'michaelb/sniprun', {'do': 'sh ./install.sh'}




call plug#end()

let g:coc_global_extensions = [
\ 'coc-rust-analyzer',
\ 'coc-pyright'
\ ]

let g:copilot_filetypes = {
\ 'help': v:true,
\ }

let g:livedown_port = 8080
let g:coc_install_timeout = 30000
let g:vimspector_enable_mappings = 'HUMAN'



" Editor settings

syntax on
set tabstop=2
set shiftwidth=2
set backspace=2
set expandtab
set ai
set hidden
set nowrap
set number
set signcolumn=number
set relativenumber
set hlsearch
set incsearch
set ruler
set showmatch
set ignorecase
set guifont=FiraCode\ Nerd\ Font\ 11
set mouse=a
set smartcase
set vb t_vb=
set background=dark
set updatetime=300
set nolist
set showcmd
set completeopt=menuone,longest,preview
set wildignore+=*.o,*.obj,.git,*.pyc
syntax enable
filetype plugin indent on


" Autocommands 

autocmd FileType rust nnoremap <buffer> <F2> :CocCommand rust-analyzer.runSingle<CR>
autocmd BufEnter * silent! :call CocAction('highlight')
autocmd BufRead python set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead python set colorcolumn=80
