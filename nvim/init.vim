call plug#begin("~/.vim/plugged")
  " Theme
  Plug 'dracula/vim'

  if has("nvim")
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'nvim-lualine/lualine.nvim'
    " If you want to have icons in your statusline choose one of these
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
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
set number " Show the line numbers
set title " Show file title
