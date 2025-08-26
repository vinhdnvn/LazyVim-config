return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Enable ESLint LSP
        eslint = {
          -- let eslint lsp respect your eslint.config.mjs
          settings = {
            eslint = {
              workingDirectories = { mode = "auto" },
            },
          },
        },
        -- Typescript LSP
        ts_ls = {
          settings = {
            typescript = {
              format = { enable = false }, -- tránh conflict với eslint/prettier
            },
          },
        },
      },
    },
  },
}
