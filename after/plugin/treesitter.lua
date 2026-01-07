-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   treesitter.lua                                     :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmoussou <mmoussou@student.42angouleme.fr  +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2024/01/18 07:12:38 by mmoussou          #+#    #+#             --
--   Updated: 2026/01/07 14:05:07 by mmoussou         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

require("nvim-treesitter.configs").setup({
	ensure_installed = { "c", "cpp", "python", "markdown" },
	sync_install = false,
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },
 })
