return {
  {
    "brenoprata10/nvim-highlight-colors",
    event = "VeryLazy",
    opts = {
      -- @usage 'background'|'foreground'|'virtual'
      render = "background",
      -- enable named colors (e.g. 'green', 'blue')
      enable_named_colors = true,
      -- enable tailwind colors
      enable_tailwind = true,
    },
    keys = {
      {
        "<leader>uc",
        "<cmd>HighlightColors toggle<cr>",
        desc = "Toggle Color Highlighting",
      },
    },
  },
}
