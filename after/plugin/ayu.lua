-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   ayu.lua                                            :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmoussou <mmoussou@student.42angouleme.fr  +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2024/05/20 02:49:08 by mmoussou          #+#    #+#             --
--   Updated: 2024/05/20 03:02:28 by mmoussou         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

require('ayu').setup({
	mirage = true,
    overrides = {
        Normal = { bg = "None" },
        ColorColumn = { bg = "None" },
        SignColumn = { bg = "None" },
        Folded = { bg = "None" },
        FoldColumn = { bg = "None" },
        CursorLine = { bg = "None" },
        CursorColumn = { bg = "None" },
        WhichKeyFloat = { bg = "None" },
        VertSplit = { bg = "None" },
    },
})
