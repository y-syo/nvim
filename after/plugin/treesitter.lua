-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   treesitter.lua                                     :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmoussou <mmoussou@student.42angouleme.fr  +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2024/01/18 07:12:38 by mmoussou          #+#    #+#             --
--   Updated: 2024/04/02 23:26:55 by mmoussou         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

require("nvim-treesitter.configs").setup({
	ensure_installed = { "c", "cpp", "lua", "rust", "python", "markdown" },
	sync_install = false,
	highlight = { enable = true },
	indent = { enable = true },
 })
