# Typecraft Dotfiles

This repository consists of all the configuration that we went through in all of our video series:
1. [NeoVim For Newbies](https://youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn&si=eS4WBeosrMKB5zHU)
2. [Linux For Newbies](https://youtu.be/cGxm4tvF5E8?si=AcZOjY3xU_6W8jDG)

### Getting Started
In order to make this configuration yours, clone this repository into your home directory.

`git clone https://github.com/typecraft-dev/dotfiles.git`

Once the cone is completed, the file structure should look something like this:
```bash
./dotfiles
├── README.md
├── install.sh
├── nvim
│   ├── init.lua
│   ├── lazy-lock.json
│   └── lua
│       ├── plugins
│       ├── plugins.lua
│       └── vim-options.lua
└── starship.toml
```
### Starship Prompt
Start by installing the starship binary via package manager or from git. Put it in `$PATH`:
```bash
curl -sS https://starship.rs/install.sh | sh
```
Finish by adding the following to `.zshrc`:
```bash
eval $(starship init zsh)
```
Starship uses variables to help it point to custom directories. If you wish to change the config directory
for starship, you can set the starship environment variable.
```bash
export STARSHIP_CONFIG="$HOME/.config/starship.toml"
```
Starship has tons of configuration options for customizing the prompt. Make sure to take a look at the 
documentation for it [here](https://starship.rs/config/).
### NeoVim
Coming soon...

### Install Script
Now all that is left is to symlink everything into place. The script `install.sh` will symlink 
all the files into the respective locations. You can see what the install script does, here:
```bash
#! /bin/bash
create_symlinks() {
    # Get the directory in which this script lives.
    script_dir=$(dirname "$(readlink -f "$0")")

    # Get a list of all files in this directory that start with a dot.
    files=$(find -maxdepth 1 -type f -name ".*")

    # Create a symbolic link to each file in the home directory.
    for file in $files; do
        name=$(basename $file)
        echo "Creating symlink to $name in home directory."
        rm -rf ~/$name
        ln -s $script_dir/$name ~/$name
    done

    if [ ! -d ~/.config/nvim ]
    then
      mkdir -p ~/.config/
      ln -s $script_dir/nvim ~/.config/
    fi

}
create_symlinks
```
