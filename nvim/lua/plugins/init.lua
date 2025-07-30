require("lazy").setup({
  { import = "plugins.lsp" },
  { import = "plugins.dap" },
  { import = "plugins.rust" },
  { import = "plugins.languages" },
  { import = "plugins.utils" },
  {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
      vim.g.copilot_filetypes = {
        help = true,
      }
    end,
  },


  {
    "shime/vim-livedown",
    ft = "markdown",
    config = function()
      vim.g.livedown_port = 8080
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  {
    "airblade/vim-rooter",
    event = "VeryLazy",
  },
  {
    "tpope/vim-obsession",
    cmd = { "Obsess", "Obsession" },
  },
  {
    "junegunn/vim-easy-align",
    keys = { { "ga", "<Plug>(EasyAlign)", mode = { "n", "x" } } },
  },
  {
    "vim-scripts/renumber.vim",
    cmd = "Renumber",
  },
  {
    "michaelb/sniprun",
    build = "sh ./install.sh",
    cmd = { "SnipRun", "SnipRunOperator" },
  },
}, {
  defaults = {
    lazy = true,
  },
  install = {
    colorscheme = { "default" },
  },
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})