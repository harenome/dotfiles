HarnoRanaivo's dotfiles
=======================

My personnal dotfiles.

Dotfiles what?
--------------
On UNIX-like operating sytems, if a file name starts with a dot (`.`), it is hidden. As configuration files usually are hidden in an user's `HOME` directory, most people tend to refer to their configuration files as “dotfiles”.

Install
-------
### Cloning the repository
First of all, get the dotfiles (you are free to change the destination if you don't like `~/.dotfiles`):

```bash
$ git clone git://github.com/HarnoRanaivo/harnoranaivo-dotfiles.git ~/.dotfiles
```

This project makes use of git submodules (for further information: `man git submodule`), so you need to initialize them and update them:

```bash
$ cd ~/.dotfiles
$ git submodule init
$ git submodule update
```

If you prefer, you can also initialize and update the submodules when cloning the repository:

```bash
$ git clone --recursive git://github.com/HarnoRanaivo/harnoranaivo-dotfiles.git ~/.dotfiles
```

### Linking the files
A little script is provided in order to help manage the dotfiles. To know how it works:

```bash
cd ~/.dotfiles
./symlink --help
```

If you wish to link all of the dotfiles, type the following command. If you already have some dotfiles, backups will be done in the `backups` folder, unless you use the option `--no-backups`.

```bash
./symlink --verbose --force-overwrite
```

### Updating
```bash
$ git checkout master
$ git pull
$ git submodule init
$ git submodule update
$ ./symlink --force-overwrite
```

License
-------
### My dotfiles
My dotfiles are licensed under the Do What The Fuck You Want To Public License, Version 2, as published by Sam Hocevar.
Please see http://wtfpl.net/COPYING for further and much more detailed information.

### The submodules
Please browse to the directories of the submodules (have a look at `.gitmodules` to know the paths) to know their licenses.
