#!/bin/bash
# Explicitly set up the environment for swaggen

# Source shell profile
if [ -f "$HOME/.zshrc" ]; then
  source "$HOME/.zshrc"
elif [ -f "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi

# Set up pyenv if needed
if command -v pyenv > /dev/null; then
  export PATH="$HOME/.pyenv/bin:$PATH"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# Run swaggen with all arguments passed to this script
swaggen "$@"