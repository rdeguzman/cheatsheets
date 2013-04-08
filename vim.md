Basic Vim
---

### Removing ^M characters
	%s/^M/\r\n/g	^M => (ctrl + v then ctrl + m)

### Recording and Playing macros
    qa               Start recording macro a
    q				 Start/Stop recording
    10@a			 Play macro 10 times

Vimrc Configuration
---
### Basic
	:set background=dark
	:set tabstop=3
	:set shiftwidth=3
	:set expandtab
	:syn on
	:set number
	:set autoindent
    
