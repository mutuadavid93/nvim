return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  config = function()
    -- Treesitter Configuration
    local config = require("nvim-treesitter.configs")

    -- Treesitter options
    config.setup({
      -- Make sure to install these language parsers in tree-sitter
      ensure_installed = {"lua", "javascript"},
      highlight = {enable = true},
      indent = {enable = true},
    })
  end
}
