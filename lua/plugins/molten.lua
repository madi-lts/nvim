return {
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    init = function()
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_auto_open_output = true
      vim.g.molten_output_win_max_height = 20
      vim.g.molten_use_border_highlights = true
      --      vim.keymap.set("n", "<localleader>mi", ":MoltenInit<CR>")
      --      vim.keymap.set("n", "<localleader>e", ":MoltenEvaluateOperator<CR>")
      --      vim.keymap.set("n", "<localleader>rr", ":MoltenReevaluateCell<CR>")
      --      vim.keymap.set("v", "<localleader>r", ":<C-u>MoltenEvaluateVisual<CR>gv")
      --      vim.keymap.set("n", "<localleader>os", ":noautocmd MoltenEnterOutput<CR>")
      --      vim.keymap.set("n", "<localleader>oh", ":MoltenHideOutput<CR>")
      --      vim.keymap.set("n", "<localleader>md", ":MoltenDelete<CR>")
    end,
  },
  {
    -- see the image.nvim readme for more information about configuring this plugin
    "3rd/image.nvim",
    opts = {
      backend = "kitty", -- whatever backend you would like to use
      max_width = 100,
      max_height = 12,
      max_height_window_percentage = math.huge,
      max_width_window_percentage = math.huge,
      window_overlap_clear_enabled = true, -- toggles images when windows are overlapped
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
    },
  },
}