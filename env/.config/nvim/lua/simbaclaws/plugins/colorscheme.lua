return {
    "marko-cerovac/material.nvim",             --- Radium Colorscheme
    lazy = false,
    priority = 1000,
    config = function()
      require('material').setup {
        contrast = {
          terminal = false,
          sidebars = false,
          floating_windows = false,
          cursor_line = false,
          lsp_virtual_text = false,
          non_current_windows = false,
          filetypes = {}
        },

        styles = {
          comments = { [[ italic = true ]] },
          strings = { [[ bold = true ]] },
          keywords = { [[ underline = true ]] },
          functions = { [[ bold = true, undercurl = true ]] },
          variables = {},
          operators = {},
          types = {},
        },

        plugins = {
          "harpoon",
          "nvim-cmp",
          "nvim-tree",
          "telescope",
        },

        disable = {
          colored_cursor = false,
          borders = false,
          background = true,
          term_colors = false,
          eob_lines = false
        },

        high_visibility = {
          lighter = false,
          darker = true
        },

        lualine_style = "default",

        async_loading = true,

        custom_colors = nil,
        
        custom_highlights = {},
      }
      -- Load the colorscheme
      require('material').load()
      vim.g.material_style = "deep ocean"
      vim.cmd('colorscheme material')
    end,
}
