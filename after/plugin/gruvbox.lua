-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   gruvbox.lua                                        :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmoussou <mmoussou@student.42angouleme.fr  +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2024/01/11 15:23:07 by mmoussou          #+#    #+#             --
--   Updated: 2024/01/11 15:23:13 by mmoussou         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})
