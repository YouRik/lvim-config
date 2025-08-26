return {
  "alexghergh/nvim-tmux-navigation",
  keys = {
    {
      "<C-h>",
      "<Cmd>NvimTmuxNavigateLeft<cr>",
    },
    {
      "<C-j>",
      "<Cmd>NvimTmuxNavigateDown<cr>",
    },
    {
      "<C-k>",
      "<Cmd>NvimTmuxNavigateUp<cr>",
    },
    {
      "<C-l>",
      "<Cmd>NvimTmuxNavigateRight<cr>",
    },
  },
  opts = {
    disable_when_zoomed = true,
  },
  config = true,
}
