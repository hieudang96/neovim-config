local default = { noremap = true, silent = true }
-- file movement
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- undo and redo
vim.keymap.set("i", "<C-z>", vim.cmd.u)
vim.keymap.set("i", "<C-S-z>", vim.cmd.red)

-- paste from clip board
vim.keymap.set({"n", "v"}, "<C-S-v>", '"+p<BAR><BAR>i')

-- paste in insert mode
vim.keymap.set("i", "<C-v>", '<C-o>P')

-- screen manupulate
vim.keymap.set({"i", "n"}, "<C-S-Tab>", '<ESC><C-W>n<BAR>:terminal<CR><BAR><C-W>r<BAR>', default)
vim.keymap.set({"i", "n"}, "<C-t>", vim.cmd.tabnew)

-- quick esc
vim.keymap.set("i", "<C-c>", "<ESC>", default)

-- select from insert mode
vim.keymap.set("i", "<S-left>", "<C-o>v<C-g>", default)
vim.keymap.set("i", "<S-right>", "<C-o>v<C-g>", default)
vim.keymap.set("i", "<C-[>", "<C-o>va[", default)
vim.keymap.set("i", "<C-S-[>", "<C-o>va}", default)
vim.keymap.set("i", "<A-[>", "<C-o>]m", default)
vim.keymap.set("i", "<A-S-[>", "<C-o>[m", default)

vim.keymap.set("n", "<C-k>", function()
    fname = vim.ui.input({ prompt = "File:", completion = "dir"}, function(fpath)
            vim.cmd("cd " .. fpath)
        end
    )
    end
)

