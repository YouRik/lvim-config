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
              "!Equals",
              "!If",
              "!Ref",
              "!Sub",
              "!GetAtt",
              "!FindInMap",
            },
          },
        },
      },
    },
  },
}
