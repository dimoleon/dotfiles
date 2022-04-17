#!/bin/sh 

cd 

mkdir -p .config/nvim/lua/packerconfig

ln -s ~/dotfiles/nvim2/init.lua ~/.config/nvim/init.lua
ln -s ~/dotfiles/nvim2/packerconfig/init.lua ~/.config/nvim/lua/packerconfig/init.lua

