return {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
        opts = require "nvchad.configs.treesitter"
        opts.ensure_installed = {
            "lua",
            "javascript",
            "typescript",
            "tsx",
        }
    end
}
