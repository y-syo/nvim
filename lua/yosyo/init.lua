-- **************************************************************************** --
--                                                                              --
--                                                          :::      ::::::::   --
--   init.lua                                             :+:      :+:    :+:   --
--                                                      +:+ +:+         +:+     --
--   By: mmoussou <mmoussou@student.42angouleme.fr>   +#+  +:+       +#+        --
--                                                  +#+#+#+#+#+   +#+           --
--   Created: 2024/01/03 18:06:10 by mmoussou            #+#    #+#             --
--   Updated: 2024/01/03 19:29:48 by mmoussou           ###   ########.fr       --
--                                                                              --
-- **************************************************************************** --

require('yosyo.lazy')

vim.o.background = "dark"
-- vim.cmd [[colorscheme ayu]]
require('ayu').colorscheme()

-- disable netrw (for nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
-- vim.opt.termguicolors = true
vim.o.termguicolors = true

-- enable mouse support
vim.o.mouse = 'a'

-- line numbers
vim.o.nu = true
-- vim.o.statuscolumn = "%=%{v:relnum == 0 and v:lnum or v:relnum}  "
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.cursorlineopt = 'both'

function StatusColumn()
	local is_current = vim.v.lnum == vim.fn.line(".")
	if is_current then
		return "%#CursorLineNr#%l%#LineNr#▐ "
		-- return "%#CursorLineNr#%l%#LineNr#▐ "
	end
	return "%-4l ▐ "
end

vim.opt.statuscolumn = "%{%v:lua.StatusColumn()%}"

-- indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.cmd([[autocmd VimLeave * mksession! ~/.vim_session]])
