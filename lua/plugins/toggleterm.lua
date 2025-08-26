return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 15,
      open_mapping = [[<c-\>]], -- Ctrl+\ để bật/tắt
      shade_terminals = true,
      direction = "horizontal", -- có thể "vertical" hoặc "float"
    })
    -- Map nhanh 5 terminal
    vim.keymap.set("n", "<leader>1", "<cmd>1ToggleTerm direction=horizontal size=15<cr>", { desc = "Toggle Term 1" })
    vim.keymap.set("n", "<leader>2", "<cmd>2ToggleTerm direction=horizontal size=15<cr>", { desc = "Toggle Term 2" })
    vim.keymap.set("n", "<leader>3", "<cmd>3ToggleTerm direction=horizontal size=15<cr>", { desc = "Toggle Term 3" })
    vim.keymap.set("n", "<leader>4", "<cmd>4ToggleTerm direction=horizontal size=15<cr>", { desc = "Toggle Term 4" })
    vim.keymap.set("n", "<leader>5", "<cmd>5ToggleTerm direction=horizontal size=15<cr>", { desc = "Toggle Term 5" })
  end,
}
