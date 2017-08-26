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
Plug 'roxma/nvim-completion-manager', { 'do': function('DoRemote') }

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Color pallet
Plug 'https://github.com/lifepillar/vim-solarized8'

" Initialize plugin system
call plug#end()
