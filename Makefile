install:
	make vim-install
	make git-install
	make zsh-install

git-install:
	ln -s ${PWD}/git/gitignore ~/.gitignore
	git config --global core.excludesfile ~/.gitignore

git-clean:
	rm -f ~/.gitignore

zsh-install:
	make zsh-clean
	ln -s ${PWD}/zsh/zshrc ~/.zshrc
	ln -s ${PWD}/zsh/zshenv ~/.zshenv
	mkdir ~/.zsh
	ln -s ${PWD}/zsh/functions ~/.zsh
	chsh -s /bin/zsh

zsh-clean:
	rm -rf ~/.zsh*

tmux-install:
	make tmux-clean
	ln -s ${PWD}/tmux/tmux.conf ~/.tmux.conf
	mkdir ~/.tmux
	git clone git://github.com/erikw/tmux-powerline.git ~/.tmux/tmux-powerline

tmux-clean:
	rm -f ~/.tmux.conf
	rm -rf ~/.tmux

vim-install:
	make vim-clean
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	ln -s ${PWD}/vim/vimrc ~/.vimrc
	ln -s ${PWD}/vim/vimbundles ~/.vimbundles
	vim +BundleInstall +qall

vim-clean:
	rm -rf ~/.vim*
	rm -rf ~/.vim/bundle/vundle

