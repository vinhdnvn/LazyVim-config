return {
  {
    "christoomey/vim-tmux-navigator",
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Go to left window" },
      { "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Go to right window" },
      { "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Go to below window" },
      { "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Go to upper window" },
    },
  },
  {
    "s1n7ax/nvim-window-picker",
    keys = {
      {
        "<leader>w",
        function()
          local pick_window = require("window-picker").pick_window() or vim.api.nvim_get_current_win()
          vim.api.nvim_set_current_win(pick_window)
        end,
        desc = "Pick window",
      },
    },
    config = function()
      require("window-picker").setup()
    end,
  },
}
