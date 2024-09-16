return {
  "linux-cultist/venv-selector.nvim",
  dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
  branch = "regexp",
  config = function()
    require("venv-selector").setup({
      settings = {
        search = {
          my_venvs = {
            command = "fd bin/python$ /usr/local/Caskroom/miniconda/base",
          },
        },
      },
    })
  end,
  event = "VeryLazy",
}
