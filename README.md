# dotfiles
My dotfiles

# Installation

```
git clone git@github.com:egeste/dotfiles.git

mkdir -p ~/.config/private
touch ~/.config/private/alias.sh
touch ~/.config/private/export.sh

ln -s dotfiles/.config/zsh ~/.config/zsh
ln -s dotfiles/.config/bash ~/.config/bash
ln -s dotfiles/.config/common ~/.config/common
ln -s dotfiles/.oh-my-zsh/custom/themes/bureau-rvm.zsh-theme ~/.oh-my-zsh/custom/themes/bureau-rvm.zsh-theme

mv ~/.zshrc ~/.zshrc_ && ln -s dotfiles/.zshrc ~/.zshrc
```
