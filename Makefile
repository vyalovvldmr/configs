install:
	# Install Sublime Text
	brew install --cask sublime-text
	# Install zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
	echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
	# Install Meslo Nerd font
	brew tap homebrew/cask-fonts
	brew install --cask font-meslo-lg-nerd-font
	# Install Alacritty Terminal
	brew install --cask alacritty
	# Install Zellij
	brew install zellij
	# Install Starship
	brew install starship
	echo "eval \"$$(starship init zsh)\"" >> ~/.zshrc
	# Install Docker
	brew install --cask docker
	open /Applications/Docker.app
	# Install Firefox Developer edition
	brew tap homebrew/cask-versions
	brew install --cask firefox-developer-edition
	# Install KeePassXC
	brew install --cask keepassxc
	# Install neovim
	brew install neovim
	echo "alias vi=/opt/homebrew/bin/nvim" >> ~/.zshrc
	# Install htop
	brew install htop
	# Install pyenv
	brew install pyenv
	echo "PATH=\$$(pyenv root)/shims:\$$PATH" >> ~/.zshrc
	pyenv install 3.11.1
	pyenv global 3.11.1
	# Install rustup
	brew install rustup
	rustup-init -y

init:
	# Init Git config
	@cp git/.gitconfig ~/.gitconfig
	@echo "Type username for git: "; \
	read USERNAME; \
	git config --global user.name "$$USERNAME" 
	@echo "Type email for git: "; \
	read EMAIL; \
	git config --global user.email "$$EMAIL" 
