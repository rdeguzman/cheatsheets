# OSX Dev Setup

1. xcode command line tools
2. git
3. iterm2
4. install homebrew
5. dotfiles

		ln -s /Users/rupert/.dotfiles/zshrc .zshrc
		ln -s /Users/rupert/.dotfiles/zsh .zsh
		ln -s /Users/rupert/.dotfiles/localrc .localrc
		ln -s /Users/rupert/.dotfiles/gitignore .gitignore
		ln -s /Users/rupert/.dotfiles/tmux.conf .tmux.conf
		ln -s /Users/rupert/.dotfiles/vimrc .vimrc

6. chsh zsh
7. brew install fzf tmux
8. vimrc
9. vim-plugin 
		
		curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		
10. vim then PlugInstall
11. brew install postgres
12. brew services start postgres
13. brew install node
14. curl -sSL https://get.rvm.io | bash -s stable 
15. brew install nginx
16. sudo brew services start nginx

Ubuntu Setup CheatSheet

		ln -s /home/rupert/.dotfiles/zshrc .zshrc
		ln -s /home/rupert/.dotfiles/zsh .zsh
		ln -s /home/rupert/.dotfiles/localrc .localrc
		ln -s /home/rupert/.dotfiles/gitignore .gitignore
		ln -s /home/rupert/.dotfiles/tmux.conf .tmux.conf
		ln -s /home/rupert/.dotfiles/vimrc .vimrc

17. Use karabiner setup to change: esc to caps lock
