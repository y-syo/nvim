-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   lualine.lua                                        :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmoussou <mmoussou@student.42angouleme.fr  +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2024/01/03 19:46:13 by mmoussou          #+#    #+#             --
--   Updated: 2024/05/20 23:26:38 by mmoussou         ###   ########.fr       --
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

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'ayu_mirage',
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
