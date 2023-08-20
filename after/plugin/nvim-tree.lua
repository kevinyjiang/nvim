-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
    filters = {
        custom = { ".git", "*.meta", ".DS_Store" },
    },
    view = {
        width = 35,
        side = "left",
        signcolumn = "no",
        hide_root_folder = false,
    },
    renderer = {
        indent_width = 2,
        indent_markers = {
            enable = true,
            inline_arrows = true;
        },
        icons = {
            webdev_colors = true,
            git_placement = "after",
            padding = " ",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
            glyphs = {
                default = "",
                symlink = "",
                folder = {
                    arrow_open = "",
                    arrow_closed = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
                },
                git = {
                    unstaged = "",
                    staged = "S",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "U",
                    deleted = "",
                    ignored = "◌",
                },
            },
        },
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
        update_root = true,
        ignore_list = {},
    },
    git = {
        enable = true
    },
    diagnostics = {
        enable = true,
        show_on_dirs = false
    },
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
})


