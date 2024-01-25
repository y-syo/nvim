-- **************************************************************************** --
--                                                                              --
--                                                          :::      ::::::::   --
--   lazy.lua                                             :+:      :+:    :+:   --
--                                                      +:+ +:+         +:+     --
--   By: mmoussou <mmoussou@student.42angouleme.fr>   +#+  +:+       +#+        --
--                                                  +#+#+#+#+#+   +#+           --
--   Created: 2024/01/03 18:06:14 by mmoussou            #+#    #+#             --
--   Updated: 2024/01/03 19:16:30 by mmoussou           ###   ########.fr       --
--                                                                              --
-- **************************************************************************** --

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

-- check if lazy.nvim exist, if not, clone it
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end

-- Prepend the runtime path
vim.opt.rtp:prepend(lazypath)


-- Plugins

require('lazy').setup({
	{ 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' } },
	{ 'stevearc/dressing.nvim', event = "VeryLazy" },
	{ '2kabhishek/nerdy.nvim', dependencies = { 'stevearc/dressing.nvim', 'nvim-telescope/telescope.nvim', }, lazy = true, cmd = 'Nerdy', },
	{ 'kylechui/nvim-surround', version = "*", event = "VeryLazy" },
	{ 'nvimdev/dashboard-nvim', event = 'VimEnter', dependencies = { 'nvim-tree/nvim-web-devicons' } },
	{ 'nvim-tree/nvim-tree.lua', dependencies = { 'nvim-tree/nvim-tree.lua' } },
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{'elkowar/yuck.vim', lazy = true},
	{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true },

	-- 42 specific plugins
	{'Diogo-ss/42-header.nvim', lazy = true},
	{ 'hardyrafael17/norminette42.nvim', event = "VeryLazy", enabled = true, config = function() local norminette = require("norminette") norminette.setup({ runOnSave = true, maxErrorsToShow = 10, active = true, }) end },
})
