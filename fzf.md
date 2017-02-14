---
layout: default
---
FZF CheatSheet
---

### Install
	brew isntall fzf
	/usr/local/opt/fzf/install
	export FZF_DEFAULT_OPTS='--height 90%'
	
### localrc
	export FZF_DEFAULT_OPTS='--no-height --no-reverse	

### vim-plug

Download and install

  	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

	:PlugInstall

### vimrc

	#vim vimrc
	" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
	call plug#begin('~/.vim/plugged')
	
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	
	" Initialize plugin system
	call plug#end()

### Key bindings

	CTRL + T  # Paste the selected files and directories onto the command line
	CTRL + R  # Paste the selected command from history onto the command line
	ALT-C # cd into the selected directory
	