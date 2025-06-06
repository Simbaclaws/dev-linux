return {
    "marko-cerovac/material.nvim",
    init = function ()
      vim.g.material_style = 'deep ocean'
    end,
    config = function()
      local colors = require("material.colors")
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
        
        custom_highlights = {
          DiagnosticVirtualTextError = {
            fg = colors.lsp.error,
            bg = colors.main.black,
            italic = true,
          },
          DiagnosticVirtualTextHint = {
            fg = colors.lsp.hint,
            bg = colors.main.black,
            italic = true,
          },
          DiagnosticVirtualTextInfo = {
            fg = colors.lsp.info,
            bg = colors.main.black,
            italic = true,
          },
          DiagnosticVirtualTextOk = {
            fg = colors.lsp.info,
            bg = colors.main.black,
            italic = true,
          },
          DiagnosticVirtualTextWarn = {
            fg = colors.lsp.warning,
            bg = colors.main.black,
            italic = true,
          },
        },
      }

      -- Load the colorscheme
      vim.cmd('colorscheme material')
    end,
}
