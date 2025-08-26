return {
  { "tpope/vim-dadbod", lazy = true },
  {
    "kristijanhusak/vim-dadbod-ui",
    cmd = { "DBUI", "DBUIToggle", "DBUIAddConnection", "DBUIFindBuffer" },
    dependencies = { "tpope/vim-dadbod", "kristijanhusak/vim-dadbod-completion" },
    init = function()
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  },
  {
    "kristijanhusak/vim-dadbod-completion",
    ft = { "sql", "mysql", "plsql" },
    init = function()
      vim.g.completion_chain_complete_list = {
        sql = {
          { complete_items = { "vim-dadbod-completion" } },
        },
      }
    end,
  },
}
