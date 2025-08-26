return {
  "tpope/vim-fugitive",
  dependencies = {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<Leader>gg"] = { ":vertical rightbelow :Git<CR>", desc = "Fugitive" },
          ["<Leader>gl"] = { ":vertical rightbelow :Git log<CR>", desc = "Git Log" },
          ["<Leader>g<S-P>"] = { ":Git push<CR>", desc = "Git Push" },
        },
      },
    },
  },
}
