local M = {
    --"rebelot/kanagawa.nvim",
    "catppuccin/vim",
    lazy = false, -- Loads this plugin at the beginning
    priority = 1000, 
    config = function()
        vim.cmd.colorscheme "catppuccin_mocha"
    end,
}

return { M }
