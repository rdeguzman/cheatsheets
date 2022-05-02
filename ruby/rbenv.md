# rbenv

### osx + ruby + rbenv + rails	

1. Install Command line tools on terminal

		xcode-select --install

2. Install Homebrew

		ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

3. Install rbenv

		brew update
		brew install rbenv rbenv-gem-rehash ruby-build
		echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
		echo 'export PATH="$HOME/.rbenv/shims:$PATH"' >> ~/.bash_profile
		source ~/.bash_profile

4. Install Ruby

		rbenv install 2.2.1
		rbenv global 2.2.1
		ruby -v

5. Install Rails

		gem install rails -v 4.2.0 --no-ri --no-rdoc
		rbenv rehash

6. Checking

		ruby -v
		# ruby 2.2.1

		rails -v
		# Rails 4.2.0
