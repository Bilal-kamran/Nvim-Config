# Neovim Configuration

## Table of Contents
- [Overview](#overview)
- [Configuration Files](#configuration-files)
- [File Structure](#file-structure)
- [Basic Keymaps](#basic-keymaps)
- [Adding a Plugin](#adding-a-plugin)
- [How to Use the Configuration](#how-to-use-the-configuration)
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
   nvim Settings.lua
   ```
   Other files include `Keymaps.lua`, `Indentation.lua`, `DColors.lua`, `ColorCorrection.lua` and `init.lua`.

3. Restart Neovim for the changes to take effect and verify that everything works as expected.

## File Structure
Below is the structure of the configuration files:

```
$HOME/.config/nvim/
├── init.lua
├── lua/
│   ├── bilalkamran/
│   │   ├── init.lua
│   │   ├── Settings.lua
│   │   ├── Keymaps.lua
│   │   ├── Indentation.lua
│   │   ├── DColors.lua
│   │   ├── ColorCorrection.lua
```
If you want to you can change the "bilalkamran" directory to "user" or something else, but make sure to change the name in the init.lua files.

## Plugin Manager
This configuration uses no Plugin Manager.

## Basic Keymaps
Keymaps make navigating and using Neovim easier. If you want to understand the keymaps that are used,
then open the `Keymaps.lua` file. Every keymap is explained briefly via short comments.

### Customizing
You can edit the configuration in the following files:
- `$HOME/.config/nvim/lua/bilalkamran/Keymaps.lua`
- `$HOME/.config/nvim/lua/bilalkamran/Settings.lua`

**Other settings the configuration includes**:
- A self made indentation script (you can use a plugin for that if you desire, I just want to avoid plugins)
- A ColorMyPencils function inspired my ThePrimeagen which is located in ColorCorrection.lua (you can remove it if you want to)
- A list of Default Colorschemes that comes with Neovim are in the file DColors.lua

## Adding a Plugin
This configuration consist no plugin or plugin manager by default. If you wish to add one then follow the steps of installation
of the respective plugin or plugin manager you wish to install.

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

## Acknowledgements
Special thanks to these resources and individuals who inspired this configuration:

- [ThePrimeagen](https://github.com/ThePrimeagen)
- [Tj Devris](https://github.com/tjdevries)
- [Chris Power](https://github.com/cpow)
- [Kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)

Many of the ideas and plugins were derived or inspired by the above resources.
