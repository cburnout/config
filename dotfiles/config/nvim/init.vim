set number

" Default tab config, use spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80 " Too narrow for my tastes, but satisfies most standards.
set smarttab
set shiftround	" use multiple of shiftwidth when indenting with '<' and '>'
set expandtab

set noswapfile
set nobackup " do not keep a backup file, use persistent versions instead

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

" Make sure you use single quotes

" File browser
" Maybe not needed Plug 'scrooloose/nerdtree'

" Fuzzy file finder
Plug 'junegunn/fzf', { 'do': './install --all' }

" Rainbow Parens (easy to spot where parens are)
Plug 'junegunn/rainbow_parentheses.vim'

" Tabcomplete 
" nvim-completion-manager
" Plug 'roxma/nvim-completion-manager', { 'do': function('DoRemote') }
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Color pallet
Plug 'https://github.com/lifepillar/vim-solarized8'

" Initialize plugin system
call plug#end()
