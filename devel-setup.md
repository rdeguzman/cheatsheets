---
layout: default
---
OSX Setup CheatSheet
---

1. xcode command line tools
2. git
3. iterm2
4. install homebrew
5. dotfiles

		ln -s /Users/reddog/.dotfiles/zshrc .zshrc
		ln -s /Users/reddog/.dotfiles/zsh .zsh
		ln -s /Users/reddog/.dotfiles/localrc .localrc
		ln -s /Users/reddog/.dotfiles/gitignore .gitignore
		ln -s /Users/reddog/.dotfiles/tmux.conf .tmux.conf
		ln -s /Users/reddog/.dotfiles/vimrc .vimrc

6. chsh zsh
7. brew install fzf tmux
8. vimrc
9. vim-plugin 
		
		curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		
10. PlugInstall
11. brew install postgres
12. brew services start postgres
13. brew install node
14. curl -sSL https://get.rvm.io | bash -s stable 
15. brew install nginx
16. sudo brew services start nginx
