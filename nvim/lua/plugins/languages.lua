-- Language support plugins
-- Converted from vim-plug configuration

return {
  -- Multi-language syntax support
  {
    "sheerun/vim-polyglot",
    event = { "BufReadPre", "BufNewFile" },
  },

  -- Blockchain/Smart Contract Languages
  {
    "tomlion/vim-solidity",
    ft = "solidity",
  },
  {
    "vyperlang/vim-vyper",
    ft = "vyper",
  },
  {
    "iden3/vim-circom-syntax",
    ft = "circom",
  },

  -- Python specific
  {
    "python-mode/python-mode",
    ft = "python",
    config = function()
      vim.g.pymode_python = "python3"
    end,
  },

  -- General language server support
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
  },
  
  -- Mason for managing LSP servers
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
    build = ":MasonUpdate",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "pyright",
        "black",
        "flake8",
      },
    },
  },
  
  -- Mason LSP config bridge
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
    opts = {
      ensure_installed = {
        "rust_analyzer",
        "pyright",
      },
    },
  },
}