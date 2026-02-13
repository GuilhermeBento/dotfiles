#!/bin/bash

sudo apt-get update

sudo apt-get install -y \
	git \
	curl \
	python3 \
	vim \
	tmux \
	keychain \
	xclip \
	fzf \
	ripgrep \
	fd-find \
	tree \
	jq \
	htop \
	build-essential

# Hook custom dotfiles into the system .bashrc (non-destructive)
HOOK='[ -f ~/.bash_profile ] && source ~/.bash_profile'
if ! grep -qF "$HOOK" ~/.bashrc 2>/dev/null; then
	echo "" >> ~/.bashrc
	echo "# Load custom dotfiles" >> ~/.bashrc
	echo "$HOOK" >> ~/.bashrc
	echo "Hooked .bash_profile into .bashrc"
fi

# Set up fzf key bindings and completion
FZF_HOOK='[ -f /usr/share/doc/fzf/examples/key-bindings.bash ] && source /usr/share/doc/fzf/examples/key-bindings.bash'
if ! grep -qF "fzf/examples/key-bindings" ~/.bashrc 2>/dev/null; then
	echo "" >> ~/.bashrc
	echo "# fzf key bindings and completion" >> ~/.bashrc
	echo "$FZF_HOOK" >> ~/.bashrc
	echo '[ -f /usr/share/doc/fzf/examples/completion.bash ] && source /usr/share/doc/fzf/examples/completion.bash' >> ~/.bashrc
	echo "Hooked fzf into .bashrc"
fi
