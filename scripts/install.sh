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
	build-essential \
	nodejs \
	npm

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

# ── Docker Engine + Docker Compose ──────────────────────────────────────
if ! command -v docker &>/dev/null; then
	echo "Installing Docker Engine..."

	# Dependencies for the apt repository
	sudo apt-get install -y ca-certificates gnupg

	# Add Docker's official GPG key
	sudo install -m 0755 -d /etc/apt/keyrings
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
		| sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
	sudo chmod a+r /etc/apt/keyrings/docker.gpg

	# Add the Docker apt repository
	echo \
		"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
		https://download.docker.com/linux/ubuntu \
		$(. /etc/os-release && echo "$VERSION_CODENAME") stable" \
		| sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

	sudo apt-get update
	sudo apt-get install -y \
		docker-ce \
		docker-ce-cli \
		containerd.io \
		docker-buildx-plugin \
		docker-compose-plugin

	# Let the current user run docker without sudo
	sudo usermod -aG docker "$USER"
	echo "Docker installed. Log out and back in for group changes to take effect."
else
	echo "Docker already installed, skipping."
fi

# Install vim plugins (vim-plug auto-installs, then runs PlugInstall)
echo "Installing Vim plugins..."
vim +PlugInstall +qall 2>/dev/null
echo "Vim plugins installed."
