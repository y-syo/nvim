-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   42header.lua                                       :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmoussou <mmoussou@student.42angouleme.fr  +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2024/01/03 19:33:34 by mmoussou          #+#    #+#             --
--   Updated: 2024/01/03 19:33:37 by mmoussou         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

require("42header").setup({
  length = 80, -- headers of different sizes are incompatible with each other
  margin = 5,
  default_map = true, -- default Mapping <F1> in normal mode
  auto_update = true, -- update header when saving
  user = "mmoussou", -- your user
  mail = "mmoussou@student.42angouleme.fr", -- your mail
  -- asciiart = { "......", "......",} -- headers with different ascii arts are incompatible with each other
})

-- vim.api.nvim_set_keymap('n', '<leader>11', ':Stdheader<CR>', { noremap = true, silent = true })
