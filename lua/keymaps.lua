-- if you type space i.e. spacebar enters into "live grep"
vim.g.mapleader = " "

local keymap = vim.keymap -- for consciseness

keymap.set("i", "jk", "<ESC>", {desc = "Exit insert mode with jk"})

keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "Clear search highlights"})

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", {desc = "Increment number"}) -- increment
keymap.set("n", "<leader>-", "<C-x>", {desc = "Decrement number"}) -- decrement

-- Split or Window Management
keymap.set("n", "<leader>v", "<C-w>v", {desc = "Split window vertically"})
keymap.set("n", "<leader>h", "<C-w>s", {desc = "Split window Horizontally"})
keymap.set("n", "<leader>x", "<cmd>close<CR>", {desc = "Close current window split"})
keymap.set("n", "<leader>=", "<C-w>=", {desc = "Make split windows equal"})

-- Tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", {desc = "Open new tab"})
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", {desc = "Close current tab"})
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", {desc = "Open new tab"})
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", {desc = "Open new tab"})
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", {desc = "Open current buffer in new tab"})

-- Move selected lines down with Option + Down
keymap.set("v", "<M-Down>", ":m '>+1<CR>gv=gv")

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

