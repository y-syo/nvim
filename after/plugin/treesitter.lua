-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   treesitter.lua                                     :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmoussou <mmoussou@student.42angouleme.fr  +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2024/01/18 07:12:38 by mmoussou          #+#    #+#             --
--   Updated: 2024/01/18 07:22:19 by mmoussou         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

require("nvim-treesitter.configs").setup({
	ensure_installed = { "c", "cpp", "lua", "rust" },
	sync_install = false,
	highlight = { enable = true },
	indent = { enable = true },
 })
