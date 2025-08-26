return {
  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "Open LazyGit" },
    },
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy", -- thêm dòng này để chắc chắn nó được load
  },
}
