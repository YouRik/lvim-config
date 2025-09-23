return {
  "rose-pine/neovim",
  name = "rose-pine",
  opts = {
    -- variant = "auto",
    -- dark_variant = "main",
    dim_inactive_windows = false,
    extend_background_behind_borders = true,
    styles = {
      transparency = true,
    },
  },
  config = function(_, opts)
    require("rose-pine").setup(opts)
    vim.cmd("colorscheme rose-pine")
  end,
}
