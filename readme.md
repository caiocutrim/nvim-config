## My simple nvim config file
Here we have some files which contains configuration of neovim.
That is pretty userful if you want to use these files and save time not by configuring things from scratch.

## Installation
You must have `CMAKE` installed in your machine.
You must have `composer` and `php 7` for php support and `ruby` for ruby support installed in your computer.

Clone this repo and put in your `.config` directory which is in your home directory (if you are in ubuntu and macosX) and rename this to nvim, then install the dependencies with the command `:PlugInstall`.


## Known Troubles
If you have some problem with python support, you must have to install the package via `sudo pip install neovim and sudo pipe install pyvim`, for python3 support use `python3 -m pip install --user --upgrade pyvim` command


If you have some problem in the instalation of `YouCompleteMe` you must enter in its diretory installation called `plugged` and run the command `python3 install.py --clang-completer` to install its dependencies.


Ps.: This little project there is no support for windows users.
