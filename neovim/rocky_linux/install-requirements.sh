#!/bin/sh

sudo dnf copr enable atim/lazygit -y
sudo dnf install -y \
	lazygit \
	ripgrep \
	fd-find \
	nodejs \
	python3 \
	python3-pip

pip install neovim
sudo npm install -g \
	tree-sitter-cli \
	neovim
