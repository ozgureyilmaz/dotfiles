call plug#begin()

Plug 'simrat39/rust-tools.nvim'
Plug 'rust-lang/rust.vim'

 Plug 'tomlion/vim-solidity'
 Plug 'vyperlang/vim-vyper'

Plug 'rcarriga/nvim-dap-ui'
Plug 'mfussenegger/nvim-dap'
Plug 'neovim/nvim-lspconfig'

Plug 'github/copilot.vim'

Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}


Plug 'shime/vim-livedown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

Plug 'airblade/vim-rooter'
Plug 'tpope/vim-obsession' 

Plug 'junegunn/vim-easy-align'
Plug 'vim-scripts/renumber.vim'
Plug 'michaelb/sniprun', {'do': 'sh ./install.sh'}
Plug 'iden3/vim-circom-syntax'


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

let g:python3_host_prog = '/usr/local/bin/python3'

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

autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 smartindent autoindent foldmethod=indent foldlevel=99 cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd BufNewFile,BufRead *.md set filetype=markdown ts=4 sw=4 expandtab smarttab



nnoremap  K :call ShowDocumentation()
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


nnoremap <silent> <leader>cc <cmd>CopilotChat<CR>
vnoremap <silent> <leader>cc <cmd>CopilotChat<CR>

let g:copilot_no_tab_map = 1 " Use 1 for true in Vimscript
