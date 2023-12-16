vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "<C-z>", vim.cmd.u)
vim.keymap.set("i", "<C-S-z>", vim.cmd.red)
vim.keymap.set({"n", "v"}, "<C-S-v>", '"+p<BAR><BAR>i')
vim.keymap.set("i", "<C-S-Tab>", '<C-W>n<BAR>:terminal<CR><BAR><C-W>r<BAR>')
vim.keymap.set({"i", "n"}, "<C-t>", vim.cmd.tabnew)

