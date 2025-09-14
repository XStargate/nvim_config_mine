return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },
  { "loctvl842/monokai-pro.nvim" },
  { "shaunsingh/nord.nvim" },
  { "cpea2506/one_monokai.nvim" },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Load it early
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- latte, frappe, macchiato, mocha
        background = {
          light = "latte",
          dark = "macchiato",
        },
        transparent_background = false,
        term_colors = true,
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
          which_key = true,
          noice = true,
          mason = true,
        },
      })
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
