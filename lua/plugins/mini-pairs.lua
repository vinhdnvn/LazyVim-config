return {
  "echasnovski/mini.pairs",
  version = false, -- luôn lấy bản mới nhất
  event = "InsertEnter", -- chỉ load khi vào insert mode (tăng tốc startup)
  config = function()
    require("mini.pairs").setup({
      -- bạn có thể config thêm ở đây
      -- ví dụ disable cho filetype nào đó:
      -- disable = { "TelescopePrompt", "vim" },
    })
  end,
}
