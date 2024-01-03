-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   lualine.lua                                        :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmoussou <mmoussou@student.42angouleme.fr  +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2024/01/03 19:46:13 by mmoussou          #+#    #+#             --
--   Updated: 2024/01/03 20:39:56 by mmoussou         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

local function user()
  return [[yosyo@seekrs]]
end

local colors = {
  black        = '#282828',
  white        = '#ebdbb2',
  red          = '#cc241d',
  green        = '#98971a',
  yellow       = '#d79921',
  blue         = '#458688',
  purple       = '#b16286',
  orange       = '#d65d0e',
  gray         = '#504945',
  darkgray     = '#3c3836',
  lightgray    = '#928374',
  inactivegray = '#7c6f64',
}

local gruvbox_sy = {
	normal = {
		a = { bg = colors.purple, fg = colors.black, gui = 'bold' },
		b = { bg = colors.gray, fg = colors.lightgray },
		c = { bg = colors.darkgray, fg = colors.lightgray },
	},
	insert = {
		a = { bg = colors.red, fg = colors.black, gui = 'bold' },
		b = { bg = colors.gray, fg = colors.lightgray },
		c = { bg = colors.darkgray, fg = colors.lightgray },
	},
	visual = {
		a = { bg = '#00FF00', fg = colors.black, gui = 'bold' },
		b = { bg = colors.gray, fg = colors.lightgray },
		c = { bg = colors.darkgray, fg = colors.lightgray },
	},
	replace = {
		a = { bg = colors.green, fg = colors.black, gui = 'bold' },
		b = { bg = colors.gray, fg = colors.lightgray },
		c = { bg = colors.darkgray, fg = colors.lightgray },
	},
	command = {
		a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
		b = { bg = colors.gray, fg = colors.lightgray },
		c = { bg = colors.darkgray, fg = colors.lightgray },
	},
	inactive = {
		a = { bg = colors.darkgray, fg = colors.black, gui = 'bold' },
		b = { bg = colors.gray, fg = colors.lightgray },
		c = { bg = colors.darkgray, fg = colors.lightgray },
	},}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = gruvbox_sy,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {'progress', 'location'},
    lualine_z = { user }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
