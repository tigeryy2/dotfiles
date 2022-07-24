# dotfiles
My personal dotfiles, mainly for macOs.

## Installation
Clone the repository to a directory of your choosing.

```bash
git clone https://github.com/tigeryy2/dotfiles.git
```

You will need to create symlinks between the dotfiles in this repository and your home directory.
Otherwise, the dotfiles will not be picked up by your system.

There is included an install script. This will remove the current dotfiles and replace them with symlinks.
WARNING: This is delete any dotfiles that have the same name as those in this repo.

macOs:
```bash
source install-scripts/osx_install.sh
```

## Thanks
- Many lines and files borrowed from [Mathias Bynens's dotfiles repository](https://github.com/mathiasbynens/dotfiles
- Install script adapted from https://github.com/mattjmorrison/dotfiles/blob/master/install-scripts/OSX/setup.sh
