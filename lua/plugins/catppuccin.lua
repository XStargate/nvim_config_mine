return {
  "catppuccin/nvim",
  priority = 1000, -- Load it early
  config = function()
    require("catppuccin").setup({
      flavour = "macha", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        dark = "macchiato",
        light = "latte",
      },
      transparent_background = true,
      show_end_of_buffer = false, -- show the '~' characters after the end of buffers
      term_colors = false, -- set term gui colors (most terminals support this)
      integrations = {
        treesitter = true,
        native_lsp = {
          enabled = true,
        },
        cmp = true,
        gitsigns = true,
        telescope = true,
        notify = true,
        mini = true,
        harpoon = true,
        which_key = ture,
        noice = true,
        mason = ture,
      },
    })
  vim.cmd.colorscheme("catppuccin")
  end,
}
