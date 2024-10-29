return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            config = {
                project = {
                    enable = true,
                    limit = 8,
                    action = 'Telescope find_files cwd='
                }
            }
        }
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
