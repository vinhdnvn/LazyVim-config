-- File: lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- cập nhật parser khi cài đặt
  event = { "BufReadPost", "BufNewFile" }, -- load khi mở file
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "vimdoc",
      "query",
      "javascript",
      "typescript",
      "tsx",
      "json",
      "html",
      "css",
      "c",
      "cpp",
      "python",
      "rust",
      "proto",
    },
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
