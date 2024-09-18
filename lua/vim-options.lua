-- If you type space i.e. spacebar enters into "live grep"
vim.g.mapleader = " "

local opt = vim.opt;

--  setup commands
--  Show line numbers by default
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case sensitive

opt.cursorline = true -- hihglight or underline current line

-- Move selected lines down with Option + Down
vim.keymap.set("v", "<M-Down>", ":m '>+1<CR>gv=gv")

-- Move selected lines up with Option + Up
vim.keymap.set("v", "<M-Up>", ":m '<-2<CR>gv=gv")

-- Ctrl + a => Select the entire file contents
vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true })

-- Keymap to jump to Neo-tree window
vim.keymap.set("n", "<leader>e", function()
    local neotree_win_id = vim.fn.bufwinid("neo-tree filesystem [1]") -- Get Neo-tree window ID
    if neotree_win_id ~= -1 then
        vim.api.nvim_set_current_win(neotree_win_id) -- Focus Neo-tree window if open
    else
        vim.cmd("Neotree toggle") -- Toggle Neo-tree if not open
    end
end, { noremap = true, silent = true })

-- Keymap to jump back to the editor window
vim.keymap.set("n", "<leader>b", "<C-w>p", { noremap = true, silent = true })

