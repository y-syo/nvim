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

-- enable mouse support
vim.o.mouse = 'a'

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.cmd([[highlight SignColumn ctermbg=None]])

vim.cmd([[autocmd VimLeave * mksession! ~/.vim_session]])
