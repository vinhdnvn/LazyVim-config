return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  build = ":Copilot auth",
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = true,
      keymap = {
        accept = "<C-l>", -- Ctrl + L để accept
        accept_word = "<C-j>", -- Ctrl + J để nhận từng từ
        accept_line = "<C-k>", -- Ctrl + K để nhận từng dòng
        next = "<C-]>", -- Ctrl + ] để chuyển gợi ý tiếp theo
        prev = "<C-[>", -- Ctrl + [ để quay lại
        dismiss = "<C-h>", -- Ctrl + H để hủy
      },
    },
    panel = { enabled = true },
  },
  config = function(_, opts)
    require("copilot").setup(opts)
  end,
}
