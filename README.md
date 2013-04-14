# Dotfiles

My dotfiles and some installation stuff :)

## Requirments
* OS X (probably)
* git

# Configuration include

* VIM
* git (only a little)

## Installation

WARNING! THIS WILL REMOVE ANY EXISTING CONFIG!

````
mkdir ~/src
git clone git@github.com:markmcconachie/dotfiles.git ~/src/dotfiles
cd ~/src/dotfiles
make install
````

### Installing individul configs

````
make vim-install
````

# Using Ctags with VIM

## Setup

Install ctags *DON'T USE THE VERSION BUILT INTO OS X! IT SUCKS*
````
brew install ctags
````

Install both the vim and ctags configs from this config

## Indexing a project

This vim config will automaticly update a tags file but will not create one.
To enable tags for your project run

````
ctags
````

## Ctags file

This config sets ctags to create a tag file called *.tags* rather than the
default *tags*

## Vim ctags commands

| Command       | Description                                        |
| ------------- |:--------------------------------------------------:|
| \<leader\>.   | Open CmdP and browse by tag                        |
| \<leader\>b   | Open the tagbar sidebar                            |
| \<C-]\>       | Jump to the definition of the tag under the cursor |
