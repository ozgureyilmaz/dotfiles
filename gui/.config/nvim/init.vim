set shell=/bin/bash

" =============================================================================
" # Plugins 
" =============================================================================
call plug#begin('~/.vim/plugged')

Plug 'rcarriga/nvim-dap-ui'
Plug 'leoluz/nvim-dap-go' 
Plug 'neovim/nvim-lspconfig'
Plug 'simrat39/rust-tools.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'mfussenegger/nvim-dap'
Plug 'tomlion/vim-solidity'
Plug 'puremourning/vimspector'
Plug 'sheerun/vim-polyglot'
Plug 'Shougo/denite.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'michaelb/sniprun', {'do': 'sh ./install.sh'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'github/copilot.vim'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'
Plug 'vim-scripts/renumber.vim'

call plug#end()

" =============================================================================
" # Editor settings
" =============================================================================

syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set incsearch
set ruler
set showmatch
set ignorecase
set guifont=FiraCode\ Nerd\ Font\ 11
set relativenumber
set smartcase
set vb t_vb=
set background=dark
set updatetime=300
set nolist
set cmdheight=2
set showcmd
set completeopt=menuone,longest,preview
set wildignore+=*.o,*.obj,.git,*.pyc



" =============================================================================
" # Keyboard shortcuts
" =============================================================================

highlight Comment ctermfg=green

" Rust LSP settings
au FileType rust nnoremap <buffer> <F2> :CocCommand rust-analyzer.runSingle<CR>

" python3 desteği
let g:python3_host_prog = '/usr/bin/python3'

" Autocompletion için LSP istemcisi
let g:coc_global_extensions = ['coc-rust-analyzer']

" Vim-Plug eklenti yöneticisini yükle
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Coc.nvim python3 configuration
autocmd BufEnter * silent! :call CocAction('highlight')

let g:copilot_filetypes = {
\ 'help': v:true,
\ }

let g:vimspector_enable_mappings = 'HUMAN'

let g:coc_install_timeout = 30000


" =============================================================================
" # Autocommands 
" =============================================================================

autocmd BufRead python set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead python set colorcolumn=80

autocmd FileType markdown set spell, nonumber

