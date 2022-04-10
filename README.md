# dotfiles

This repo contains common dotfiles.

## Vim setup

The `.vimrc` configuration assumes that a directory for backups exists and the
NERDTree plugin is installed.

If that's not the case, run the following commands:

```
mkdir -p ~/.vim/backup

git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
```
