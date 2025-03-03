return { 
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000,
    config = function()
        color = "catppuccin"
        vim.cmd.colorscheme(color)
        vim.api.nvim_set_hl( 0, "Normal", { bg = "none" } )
        vim.api.nvim_set_hl( 0, "NormalFloat", { bg = "none" } )
    end
}
