return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'christoomey/vim-tmux-navigator' -- timux & split window navigation
    },

    config = function()
      local builtin = require("telescope.builtin")

      -- Keyboard key bindings ::

      -- Ctrl + p => search for files by name
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})

      -- Space + fg => search through all files for words
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',

    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
