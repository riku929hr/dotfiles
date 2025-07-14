# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository containing configuration files for various development tools and applications. The repository uses symbolic links to deploy configurations to their appropriate locations in the home directory.

## Key Commands

### Setup and Installation
- `./setup.bash` - Install and symlink all dotfiles to home directory
- `brew bundle` - Install all Homebrew packages from Brewfile

### Code Quality and Formatting
- `npm run secretlint` - Check for secrets in all files
- `npm run format` - Format all Lua files using stylua
- `npm run check-format` - Check Lua formatting without making changes

### Development Tools
- `t` - Custom tmux session manager script (located in scripts/t)
- `lazygit` - Git TUI for repository management
- `mise` - Runtime version manager (replaces asdf)

## Architecture and Structure

### Configuration Management
- **Symlink-based deployment**: All configurations are symlinked from this repository to their target locations
- **Centralized Brewfile**: Package management through Homebrew Bundle
- **Modular organization**: Each tool has its own directory with focused configuration

### Key Directories
- `nvim/` - Neovim configuration using AstroNvim v5+ framework
- `wezterm/` - Terminal emulator configuration
- `zsh/` - Shell configuration with zprezto
- `tmux/` - Terminal multiplexer configuration
- `git/` - Git configuration and global ignore rules
- `mise/` - Runtime version manager configuration
- `scripts/` - Custom utility scripts

### Neovim Configuration
- Built on AstroNvim v5+ framework
- Plugin configuration in `nvim/lua/plugins/`
- Custom plugins include claude.lua and avante.lua for AI assistance
- Uses lazy.nvim for plugin management
- Configured with LSP, formatters, and development tools

### Package Management
- Homebrew for system packages and applications
- npm for JavaScript/Node.js tools
- mise for programming language runtime versions

### Development Environment
- Terminal: WezTerm with custom configuration
- Shell: Zsh with zprezto framework
- Git: Custom configuration with global ignore rules
- Editor: Neovim with comprehensive plugin setup

## Important Files
- `setup.bash` - Main installation script
- `Brewfile` - Homebrew package definitions
- `package.json` - npm scripts and dependencies
- `scripts/t` - tmux session manager (credit to ThePrimeagen)
- `nvim/lazy-lock.json` - Neovim plugin version lock file