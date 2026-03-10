# Simplevim

## Introduction

Welcome to Simple Vim a distribution with the intention of providing a reliable text editor that will not fail in a high stress environment. With some extra features to make your life easier. I work in a high stress environment where taking notes and using the copy and paste is fundamental. Also with this editor is easy to review other text files to look for information and relevant text to the issue. A lot of times some great editors that I have used failed me in a critical moment. There is a lot great Vim/Neovim distributions. But for now this I have centered on a simple setup that users can build upon.


## Thanks

I would love to thank the neovim community for their great editor and  plugins every plugin included here is the result of very hardwork from their respective authors.

Also I would specially like to thanks tj devries I have learnt a great deal from his youtube videos please subscribe to his channel  	[tj devries youtube channel](https://www.youtube.com/@teej_dv) 

## Instalation


Make sure you install neovim in your favorite Linux distribution:

For Fedora like distributions:

sudo dnf -y install neovim;
sudo dnf install ripgrep

For Ubuntu like distributions:
sudo apt-get install neovim;
sudo apt-get install ripgrep

Mac (Make sure you install https://brew.sh first)

brew install neovim

Once installed:

go to : (If nvim directory does not exist create it)
cd $HOME/.config/nvim
git clone https://github.com/macunan/simplevim .


Execute Neovim and wait a moment :nvim

| Command | Description |
| ----------- | ----------- |
| , | leader |
| <leader> w| Safe current buffer |
| <leader> f| look for files in current  directory |
| <leader> b| look for opened  buffers  |
| <leader> h| look for historical files  |
| <leader> g| Search for text in files in current directory and sub directories  |
| ctrl m| Move to buffer on the right | 
| ctrl n| Move to buffer on the left | 
| ctrl +alt+t| Toggle open and close small terminal window at the bottom for executing commands or other task| 


## Modifications

If you read to modify or add things.
You can check
$HOME/.config/nvim/init.lua

### Modify key mappings and editor commands

nvim/lua/config/keymaps/mykeymaps.lua

### Add or Modify plugins

nvim/lua/config/plugins/myplugins.lua


