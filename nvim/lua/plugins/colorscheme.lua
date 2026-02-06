return {
  -- Add Gruvbox Material
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Configuration options for the "Material Dark" look
      vim.g.gruvbox_material_background = "hard" -- 'hard', 'medium', 'soft'
      vim.g.gruvbox_material_foreground = "material" -- 'material', 'mix', 'original'
      vim.g.gruvbox_material_better_performance = 1
    end,
  },

  -- Configure LazyVim to load it
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
