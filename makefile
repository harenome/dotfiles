main: submodules symlink | localdirs

all: symlink main gnometerm

localdirs:
	@mkdir -p ~/.local/dotfiles/bash
	@mkdir -p ~/.local/dotfiles/gvim
	@mkdir -p ~/.local/dotfiles/vim
	@mkdir -p ~/.local/dotfiles/vim/tags
	@mkdir -p ~/.local/dotfiles/vim/swp
	@mkdir -p ~/.local/dotfiles/vim/undo
	@mkdir -p ~/.local/dotfiles/vim/spell
	@rm -f .vim.symlink/spell
	@ln -sf ~/.local/dotfiles/vim/spell .vim.symlink/spell
	@mkdir -p ~/.config
	@echo -e "\e[32mlocal dirs:\tdone\e[0m"

symlink: localdirs
	@./symlink --no-backup --force-overwrite
	@echo -e "\e[32msymlink:\tdone\e[0m"

gnometerm:
	@cat gnome-terminal/dump | dconf load /org/gnome/terminal/legacy/profiles:/
	@echo -e "\e[32mgnome-terminal:\tdone\e[0m"

submodules:
	@git submodule init
	@git submodule update
	@echo -e "\e[32msubmodules:\tdone\e[0m"
