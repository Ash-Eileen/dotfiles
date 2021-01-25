# Dotfiles and Settings

## Nvim and Vim

## Basics

Pop them in your root file!

## Installation

### Vim

#### Linux

```bash
 sudo apt-get install vim
```

#### Mac

```bash
brew install vim
```

### NeoVim

#### Linux

```bash
sudo apt install neovim
```

#### Mac

```bash
brew install neovim
```

### Vim-Plug

```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim - create-dirs \
 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

#### Vim

```bash
vim +PlugInstall
```

#### NeoVim

```bash
nvim +PlugInstall
```

## VSCode

Settings for vscode live in settings.json.

Extension list is in extensions.list.

To generate a new extensions list run

```bash
code --list-extensions > extensions.list
```

To add the extensions to VSCode run

```bash
cat extensions.list | xargs -L 1 code --install-extension
```
