local M = {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
    	require 'nvim-treesitter.install'.compilers = { "zig" }
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            textobjects = {
                move = {
                    enable = true,
                    set_jumps = true,
                    goto_next_start = {
                        ["]m"] = "@function.outer",
                        ["]]"] = "@class.outer",
                        ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" }
                    },
                    goto_next_end = {
                        ["]M"] = "@function.outer",
                        ["]["] = "@class.outer"
                    },
                    goto_previous_start = {
                        ["[m"] = "@function.outer",
                        ["[["] = "@class.outer"
                    },
                    goto_previous_end = {
                        ["[M"] = "@function.outer",
                        ["[]"] = "@class.outer"
                    },
                    goto_next = {
                        ["]d"] = "@conditional.outer",
                    },
                    goto_previous = {
                        ["[d"] = "@conditional.outer",
                    }

                }
            },
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "typescript", "javascript", "html", "svelte" },
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}

return { M }
