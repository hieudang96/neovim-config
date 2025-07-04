return {
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },

    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    "folke/neodev.nvim",
    "folke/which-key.nvim",
    {"jonboh/nvim-dap-rr", dependencies = {"nvim-dap", "telescope.nvim"}},
    {
        'nvim-lualine/lualine.nvim',
        config = function ()
            require('lualine').setup {
                options = { theme = 'horizon' }
            }
        end,
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        "numToStr/Comment.nvim",
        config = function()
            require('Comment').setup()
        end
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    },
    "nvim-lua/plenary.nvim",
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
            "theHamsta/nvim-dap-virtual-text",
            "nvim-neotest/nvim-nio",
        }
    },
    "nvim-pack/nvim-spectre",
    "nvim-tree/nvim-web-devicons",
    { "folke/neoconf.nvim", cmd = "Neoconf" },
}
