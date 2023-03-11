# candy-floss

My first and currently only neovim plugin and colorscheme that supports treesitter!

Initially built out of love for the colors of cotton candy then progressed into other colors as I saw fit.

Very heavily inspired by [nyoom-engineering/oxocarbon.nvim](https://github.com/nyoom-engineering/oxocarbon.nvim)

# How to use

Installing it for use is very easy. First, set up a package manager like [packer](https://github.com/wbthomason/packer.nvim) or [vim-plug](https://github.com/junegunn/vim-plug). Then, add `declspecl/candy-floss` to the list of plugins installed by your package manager. For example, in my packer configuration, this is what it looks like:
```lua
require'packer'.startup(function(use)
    use 'declspecl/candy-floss'
end
```

Then, later in your neovim config, wherever you set your colorscheme, insert
```lua
 vim.cmd.colorscheme "candy-floss"
```
for lua or
```vim
colorscheme candy-floss
```
for vimscript.

## Screenshots
![candy-floss](https://user-images.githubusercontent.com/103293120/212621343-7f934bbe-8233-4ea3-9f8b-b65719135069.png)
![rsscr](https://user-images.githubusercontent.com/103293120/212622040-4b7a07f8-e232-4ee8-894e-71712b8aff05.png)

## Important
I made this plugin for my own neovim setup, so some parts might not work for all neovim configs. 
