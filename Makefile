install:
	make vim-install
	make git-install
	make zsh-install

git-install:
	make git-clean
	ln -s ${PWD}/git/gitignore ~/.gitignore
	git config --global core.excludesfile ~/.gitignore

git-clean:
	rm -f ~/.gitignore

zsh-install:
	make zsh-clean
	ln -s ${PWD}/zsh/zshrc ~/.zshrc
	ln -s ${PWD}/zsh/zshenv ~/.zshenv
	ln -s ${PWD}/zsh/lib ~/.zsh
	chsh -s /bin/zsh

zsh-clean:
	rm -rf ~/.zsh*

ctags-install:
	make ctags-clean
	ln -s ${PWD}/ctags/ctags ~/.ctags

ctags-clean:
	rm -f ~/.ctags

tmux-install:
	make tmux-clean
	ln -s ${PWD}/tmux/tmux.conf ~/.tmux.conf

tmux-clean:
	rm -rf ~/.tmux.conf

vim-install:
	make vim-clean
	ln -s ${PWD}/vim/vimrc ~/.vimrc
	ln -s ${PWD}/vim/vimbundles ~/.vimbundles
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	vim +BundleInstall +qall

vim-clean:
	rm -f ~/.vimrc
	rm -f ~/.vimbundles
	rm -rf ~/.vim/bundle/vundle

