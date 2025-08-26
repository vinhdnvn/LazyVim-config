return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers", -- hiển thị theo buffer
          numbers = "none", -- hoặc "ordinal" nếu muốn thấy số
          diagnostics = "nvim_lsp", -- hiện lỗi từ LSP
          separator_style = "slant", -- kiểu ngăn cách: "slant", "thick", "thin"
          show_close_icon = false,
          always_show_bufferline = true,
        },
      })

      -- phím tắt để chuyển buffer
      vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
      vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Prev buffer" })
      vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Close buffer" })
    end,
  },
}
