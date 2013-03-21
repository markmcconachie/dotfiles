install:
	make vim-install

vim-install:
	make vim-clean
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	ln -s ${PWD}/vim/vimrc ~/.vimrc
	ln -s ${PWD}/vim/vimbundles ~/.vimbundles
	vim +BundleInstall +qall

vim-clean:
	rm -rf ~/.vim*
	rm -rf ~/.vim/bundle/vundle

