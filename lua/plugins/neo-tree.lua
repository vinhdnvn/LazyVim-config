return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "right", -- 👈 đổi từ "left" sang "right"
      width = 35, -- tuỳ chỉnh chiều rộng cột
    },
  },
  keys = {
    { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer (neo-tree)" },
  },
}
