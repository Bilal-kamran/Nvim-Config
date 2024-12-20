# Neovim Configuration

## Table of Contents
- [Overview](#overview)
- [Configuration Files](#configuration-files)
- [File Structure](#file-structure)
- [Plugin Manager](#plugin-manager)
- [All the Plugins](#all-the-plugins)
- [Basic Keymaps](#basic-keymaps)
- [Adding a Plugin](#adding-a-plugin)
- [How to Use the Configuration](#how-to-use-the-configuration)
- [Contributing](#contributing)
- [Acknowledgements](#acknowledgements)

## Overview
Welcome to my Neovim configuration! This repository contains my personalized setup for Neovim, designed to enhance productivity and streamline the development workflow. Feel free to explore, use, and modify the configuration as per your needs.

## Configuration Files
The configuration files for this setup are written in Lua for easier management and readability. While you can rewrite them in Vimscript, most users prefer Lua for its simplicity and modern features.

### Modifying Configuration
To adjust or personalize the configuration:

1. Navigate to the settings directory:
   ```sh
   cd $HOME/.config/nvim/lua/bilalkamran
   ```
2. Open the file you want to edit:
   ```sh
   nvim settings.lua
   ```
   Other files include `keymaps.lua`, `indentation.lua`, and `init.lua`.
3. Restart Neovim for the changes to take effect and verify that everything works as expected.

## File Structure
Below is the structure of the configuration files:

```
$HOME/.config/nvim/
├── init.lua
├── lua/
│   ├── bilalkamran/
│   │   ├── init.lua
│   │   ├── settings.lua
│   │   ├── keymaps.lua
│   │   ├── indentation.lua
│   ├── config/
│   │   ├── init.lua
│   │   ├── lazy.lua
│   ├── plugins/
│       ├── colors.lua
│       ├── gitsigns.lua
│       ├── nvim-cmp.lua
│       ├── treesitter.lua
│       ├── extra-LSP.lua
│       ├── lsp-config.lua
│       ├── telescope.lua
```

## Plugin Manager
This configuration uses **Lazy**, a modern, fast, and reliable plugin manager.

### Features of Lazy
- **Powerful UI**: Provides a user-friendly interface for plugin management.
- **Fast Startup Times**: Automatically caches and compiles Lua modules for quick startup.
- **Lazy Loading**: Loads Lua modules and plugins on demand, reducing load times.

For more information, visit [Lazy Nvim](https://lazy.folke.io/).

## All the Plugins
Here is a list of all the plugins used in this configuration, along with their links:
- [cattpuccin](https://github.com/catppuccin/nvim)
- [rose-pine](https://github.com/rose-pine/neovim)
- [tokyonight](https://github.com/folke/tokyonight.nvim)
- [lazydev.nvim](https://github.com/folke/lazydev.nvim)
- [luvit-meta](https://github.com/Bilal2453/luvit-meta)
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim)
- [fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [nvim-cmp-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [cmp-path](https://github.com/hrsh7th/cmp-path)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

## Basic Keymaps
Keymaps make navigating and using Neovim easier. Below are some of the most-used keymaps:

**Note**: `<leader>` refers to the "space" key on your keyboard.

- **Vim Ex Mode**: `<leader>pv`
- **Basic Navigation with Splits**:
  - Right: `<C-h>`
  - Left: `<C-l>`
  - Down: `<C-j>`
  - Up: `<C-k>`
- **Telescope**:
  - Find files: `<leader>ff`
  - Find word: `<leader>fw`
  - Find buffers: `<leader>fb`
- **LSP Actions**:
  - View code action: `<leader>ca`
  - Go to definition: `gd`
  - Go to declaration: `gD`

### Customizing Keymaps
You can edit keymaps in the following files:
- `$HOME/.config/nvim/lua/bilalkamran/keymaps.lua`
- `$HOME/.config/nvim/lua/plugins/` (specific plugin keymaps)

## Adding a Plugin
To add a plugin, create a new Lua file in the `plugins/` directory that returns a Lua table with the plugin settings. For example:

```lua
-- neo-tree.lua
return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
}
```
Save this file as `neo-tree.lua` (or another name) in the `plugins/` folder.

## How to Use the Configuration

1. **Backup Existing Configuration**:
   ```sh
   mv $HOME/.config/nvim/ $HOME/.config/nvim-backup
   ```
2. **Clone the Repository**:
   ```sh
   git clone https://github.com/Bilal-kamran/Nvim-Config.git $HOME/.config/nvim
   ```
3. **Start Neovim**:
   ```sh
   nvim
   ```
   The necessary plugins will be installed automatically.

## Contributing
Contributions are welcome! Follow these steps to contribute:

1. Fork this repository.
2. Clone your fork:
   ```sh
   git clone https://github.com/yourusername/nvim-config.git
   cd nvim-config
   ```
3. Create a new branch:
   ```sh
   git checkout -b feature-or-bugfix-name
   ```
4. Make your changes and commit:
   ```sh
   git commit -am "Description of your changes"
   ```
5. Push your branch:
   ```sh
   git push origin feature-or-bugfix-name
   ```
6. Open a pull request with a clear description of your changes.

### Code Style
- Use 2 spaces for indentation.
- Follow existing conventions and structure.
- Document your code with comments where necessary.

### Reporting Issues
For bugs or suggestions, open an issue on GitHub with detailed information.

## Acknowledgements
Special thanks to these resources and individuals who inspired or contributed to this configuration:

- [ThePrimeagen](https://github.com/ThePrimeagen)
- [Tj Devris](https://github.com/tjdevries)
- [Chris Power](https://github.com/cpow)
- [Kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)

Many of the ideas and plugins were derived or inspired by the above resources.
