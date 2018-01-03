curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
if [ -f ~/.config/nvim/autoload/vim.plug ]; then
	rm ~/.config/nvim/autoload/vim.plug 
fi
ln -s `pwd`/dotfiles/nvim/init.vim ~/.config/nvim/init.vim

