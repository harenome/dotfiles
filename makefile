main : dotm | localdirs
	echo "Dotm: done."

all : dotm main gnometerm
	echo "Special commands: done."

localdirs :
	mkdir -p ~/.local/dotfiles/bash
	mkdir -p ~/.local/dotfiles/gvim
	mkdir -p ~/.local/dotfiles/vim
	mkdir -p ~/.local/dotfiles/vim/tags

dotm : localdirs
	./dotm --verbose --force-overwrite

gnometerm :
	cat gnome-terminal/dump | dconf load /org/gnome/terminal/legacy/profiles:/
