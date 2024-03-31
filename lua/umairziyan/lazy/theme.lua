-- return {

-- "catppuccin/nvim",
-- name = "catppuccin",
-- priority = 1000,
--
-- config =  function()
--     vim.cmd.colorscheme "catppuccin"
-- end
-- }

function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "folke/tokyonight.nvim",

        "catppuccin/nvim",
        config = function()
            require("catppuccin").setup()
       end,
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                disable_background = true,
            })

            vim.cmd("colorscheme catppuccin")


            ColorMyPencils()
        end,
    },
}
