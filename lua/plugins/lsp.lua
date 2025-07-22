return {
  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false }, -- Disable all inlay hints globally
      servers = {
        -- TypeScript/JavaScript
        tsserver = {
          settings = {
            typescript = {
              preferences = {
                importModuleSpecifier = "relative",
                includePackageJsonAutoImports = "auto",
              },
            },
          },
        },
        -- Python
        pyright = {},
      },
    },
  },

  -- TypeScript extras from LazyVim (includes React support)
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- JSON support
  { import = "lazyvim.plugins.extras.lang.json" },

  -- Mason tool installer
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- LSP servers
        "typescript-language-server",
        "pyright",
        -- Formatters
        "prettier",
        "stylua",
        "shfmt",
        "black",
        -- Linters
        "eslint_d",
        "flake8",
        -- Other tools
        "shellcheck",
      },
    },
  },
}