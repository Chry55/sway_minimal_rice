return {
  "ibhagwan/fzf-lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  cmd = "FzfLua",
  keys = {
    { "<C-f>", "<cmd>FzfLua files<CR>", desc = "Find files" },
    { "<C-g>", "<cmd>FzfLua live_grep<CR>", desc = "Find text" },
    { "<C-b>", "<cmd>FzfLua buffers<CR>", desc = "Find buffers" },
    { "<C-h>", "<cmd>FzfLua helptags<CR>", desc = "Find help" },
    { "<C-n>", "<cmd>FzfLua resume<CR>", desc = "Resume finder" },
  },
  opts = {
    { "fzf-native", "hide" },
    files = {
      hidden = true,
      no_ignore = false,
      fd_opts = "--color=never --type f --type l --exclude .git",
    },
    grep = {
      hidden = true,
      no_ignore = false,
      rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096 --glob '!.git' -e",
    },
  },
}
