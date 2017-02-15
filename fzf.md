---
layout: default
---
FZF CheatSheet
---

### Install
	brew isntall fzf
	/usr/local/opt/fzf/install
   	brew install the_silver_searcher
	
### localrc
	export FZF_DEFAULT_OPTS='--no-height --no-reverse'
	export FZF_DEFAULT_COMMAND='ag -g ""'
	export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

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
	
