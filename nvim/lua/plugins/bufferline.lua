return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",

  event = "VeryLazy",

  keys = {
    -- close current buffer
    { "<C-w>", "<cmd>bdelete! | bprevious <cr>", desc = "close current buffer" },

    { "<C-t>", "<cmd>enew<CR>", desc = "create new buffer" },
  },

  opts = function()
    return require("config.ui.bufferline")
  end,
}
