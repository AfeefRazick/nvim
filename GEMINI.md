# Neovim Configuration Analysis (GEMINI.md)

## Project Overview

This directory contains a Neovim configuration. It is a modular setup, originally based on `kickstart.nvim`, and is written in Lua. The configuration is designed to be easily managed and extended.

- **Plugin Manager**: [`lazy.nvim`](https://github.com/folke/lazy.nvim) is used for managing plugins. The configuration is split across multiple files in the `lua/plugins/` directory.
- **LSP & Tools**: [`mason.nvim`](https://github.com/williamboman/mason.nvim) is used to automatically install and manage Language Server Protocol (LSP) servers, linters, and formatters.
- **Core Components**:
    - **Fuzzy Finding**: [`telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim) is configured for fast file navigation, searching, and more.
    - **Syntax Highlighting**: [`nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter) provides advanced syntax parsing for better code highlighting and indentation.
    - **Autocompletion**: The configuration includes plugins for autocompletion, likely `nvim-cmp` (inferred from `cmp.lua`).

The entry point is `init.lua`, which loads base options, keymaps, and then initializes `lazy.nvim` to load all the plugins.

## Building and Running

This is a Neovim configuration, so there is no "build" step.

1.  **Installation**:
    - Ensure Neovim (latest stable or nightly) is installed.
    - Clone this repository into your Neovim configuration directory (e.g., `~/.config/nvim`).

2.  **Running**:
    - Launch Neovim by running `nvim` in your terminal.
    - On the first launch, `lazy.nvim` will automatically bootstrap itself and install all the configured plugins.
    - You can monitor the installation process with the `:Lazy` command.

3.  **Dependencies**:
    - The configuration relies on `mason.nvim` to manage external tools like LSPs and formatters. These are installed automatically into Neovim's data directory.
    - A C compiler (like `gcc`) and `make` are required for building some native plugin extensions (e.g., `telescope-fzf-native`).
    - `ripgrep` is required for `telescope.nvim`'s live grep functionality.

## Development Conventions

- **Structure**: The configuration is highly modular.
    - Core editor settings are in `lua/config/`.
    - Each plugin's configuration is in its own file under `lua/plugins/`.
    - The main entry point is `init.lua`.
- **Formatting**: The project uses `stylua` for Lua code formatting. A `.stylua.toml` file is present, and a GitHub Actions workflow (`.github/workflows/stylua.yml`) enforces this style.
- **Keymaps**: Keybindings are centrally defined in `lua/config/keymaps.lua`. The leader key is set to `<Space>`. Plugin-specific keymaps are often defined within the plugin's configuration file.
- **Plugin Management**: To add or remove a plugin, you would typically add or remove a file in the `lua/plugins/` directory and update the `lazy.nvim` setup.
