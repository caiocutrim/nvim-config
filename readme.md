## My nvim config directory
Here we have some files which contains configuration of neovim.
That is pretty userful if you want to use these files and save time not by configuring things from scratch.

## Installation
You must have `CMAKE` installed in your machine.

Clone this repo and put in .config directory which is in your home directory (if you are in ubuntu and macosX) and rename this to nvim, if you have any trouble with instalation you must delete all dependencies and then install it with the command `:PlugInstall`.


## Known Troubles
If you have some problem with python support, you must have to install the package via `sudo pip install neovim` command

If you have some problem in the instalation of `YouCompleteMe` you must enter in its diretory installation and run the command `python3 install.py --clang-completer` to install its dependencies.
