#!/bin/bash

command_exists() {
  local command="$1"
	command -v "$command" &> /dev/null
}

if command_exists "terminal-notifier"; then
  echo "Terminal Notifier seems to be already installed"
else
  echo "Installing Terminal Notifier"
  brew install terminal-notifier
fi
