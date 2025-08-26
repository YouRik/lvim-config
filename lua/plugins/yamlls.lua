return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      yamlls = {
        settings = {
          yaml = {
            customTags = {
              "!Ref",
              "!Sub",
              "!GetAtt",
            },
          },
        },
      },
    },
  },
}
