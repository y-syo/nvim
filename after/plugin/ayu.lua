-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   ayu.lua                                            :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmoussou <mmoussou@student.42angouleme.fr  +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2024/05/20 02:49:08 by mmoussou          #+#    #+#             --
--   Updated: 2026/01/07 13:53:12 by mmoussou         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

local colors = require('ayu.colors')
colors.generate('true') -- Pass `true` to enable mirage

require('ayu').setup({
    mirage = true,
    terminal = true,
    overrides = {
        Normal = { bg = "None" },
        ColorColumn = { bg = "None" },
        SignColumn = { bg = "None" },
        Folded = { bg = "None" },
        FoldColumn = { bg = "None" },
        CursorLine = { bg = "None" },
        CursorColumn = { bg = "None" },
        WhichKeyFloat = { bg = "None" },
        VertSplit = { bg = "None"},
        LineNr = { bg = "None", fg = colors.gutter_active },
        CursorLineNr = { bg = "None", fg = colors.accent },
    },
})
