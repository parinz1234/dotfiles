call plug#begin("~/.vim/plugged")
  " Theme
  Plug 'dracula/vim'

  if has("nvim")
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'cohama/lexima.vim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'tami5/lspsaga.nvim'
    Plug 'folke/lsp-colors.nvim'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'onsails/lspkind-nvim'
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'nvim-lualine/lualine.nvim'
    " If you want to have icons in your statusline choose one of these
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/nvim-cmp'
  end
call plug#end()


runtime ./maps.vim


" Enable theming support
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme dracula

" Options
set nocompatible
set number " Show the line numbers
set title " Show file title
set encoding=utf-8
set title
set autoindent
" set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10

" Be smart when using tabs ;)
set smarttab
" indents
filetype plugin indent on
set expandtab
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent

" TypeScript with React
au BufNewFile,BufRead *.tsx			setf typescriptreact

" Fish
au BufNewFile,BufRead *.fish set filetype=fish

" Typescript or Qt translation file (which is XML)
au BufNewFile,BufReadPost *.ts
	\ if getline(1) =~ '<?xml' |
	\   setf xml |
	\ else |
	\   setf typescript |
	\ endif

" JavaScript, ECMAScript, ES module script, CommonJS script
au BufNewFile,BufRead *.js,*.javascript,*.es,*.mjs,*.cjs   setf JavaScript

" JavaScript with React
au BufNewFile,BufRead *.jsx			setf javascriptreact


