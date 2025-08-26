return {
  "kristijanhusak/vim-dadbod-ui",
  keys = {
    { "<leader>D", desc = "database" },
    { "<leader>Du", "<cmd>DBUIToggle<CR>", desc = "Toggle DBUI" },
    { "<leader>Df", "<cmd>DBUIFindBuffer<CR>", desc = "Attach buffer to database" },
    { "<leader>De", "<Plug>(DBUI_EditBindParameters)", desc = "Edit query bind parameters" },
    { "<leader>Dr", "<Plug>(DBUI_ExecuteQuery)", desc = "Execute file as database query" },
    { "<leader>Dr", "<Plug>(DBUI_ExecuteQuery)", desc = "Execute selected database query", mode = { "v" } },
  },

  init = function()
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_disable_mappings_sql = 1
    vim.g.db_ui_execute_on_save = false
  end,

  config = function()
    vim.api.nvim_create_autocmd("BufEnter", {
      pattern = "*.sql",
      callback = function()
        for _, buf in ipairs(vim.api.nvim_list_bufs()) do
          if vim.api.nvim_buf_get_name(buf):match("dbui") then
            vim.cmd("DBUIFindBuffer")
            break
          end
        end
      end,
    })
  end,
}
