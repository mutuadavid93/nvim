return { 
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000,

  -- NOTE: config option will implicitly setup catppuccin
  config = function()
    vim.cmd.colorscheme "catppuccin"
  end
}
