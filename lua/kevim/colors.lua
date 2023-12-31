require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    color_overrides = {
    },
    highlight_overrides = {
        all = function (colors)
            return {
                DashboardHeader = { fg = "#6A85E4" },
                DashboardFooter = { fg = colors.green, style = { "italic" } },
                DashboardIcon = { fg = "#d65c6e" },
                DashboardShortCut = { fg = "#4A55B9" },
                DashboardDesc = { fg = "#7BCCFC"  },
            }
        end,
    },
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        dashboard = true,
        telescope = {
            enabled = true,
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

vim.cmd("colorscheme catppuccin")
