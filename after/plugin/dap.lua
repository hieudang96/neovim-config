local dap = require('dap')
local ui = require('dapui')
-- point dap to the installed cpptools, if you don't use mason, you'll need to change `cpptools_path`
local cpptools_path = vim.fn.stdpath("data") .. "/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7"
dap.adapters.cppdbg = {
    id = 'cppdbg',
    type = 'executable',
    command = cpptools_path,
}

-- these mappings represent the maps that you usually use for dap. Change them according to your preference
vim.keymap.set("n", "<F1>", dap.terminate)
vim.keymap.set("n", "<F6>", dap.toggle_breakpoint)
vim.keymap.set("n", "<F7>", dap.continue)
vim.keymap.set("n", "<F8>", dap.step_over)
vim.keymap.set("n", "<F9>", dap.step_out)
vim.keymap.set("n", "<F10>", dap.step_into)
vim.keymap.set("n", "<F11>", dap.pause)
vim.keymap.set("n", "<F56>", dap.down) -- <A-F8>
vim.keymap.set("n", "<F57>", dap.up)   -- <A-F9>
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)



require("dapui").setup()
require("nvim-dap-virtual-text").setup()
dap.listeners.before.attach.dapui_config = function()
    ui.open()
end
dap.listeners.before.launch.dapui_config = function()
    ui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
    ui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
    ui.close()
end

dap.adapters.codelldb = {
    type = 'server',
    port = '${port}',
    executable = {
        command = vim.fn.expand('$HOME') .. '/lldb/extension/adapter/codelldb',
        args = {"--port", "${port}"}, 
    }
}

dap.configurations.rust= {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}
