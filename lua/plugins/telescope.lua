return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim", -- bắt buộc
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make", -- tăng tốc tìm kiếm
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
        },
      },
    })

    -- load extension fzf
    pcall(telescope.load_extension, "fzf")
  end,
}
