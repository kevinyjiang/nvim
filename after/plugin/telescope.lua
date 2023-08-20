local actions = require "telescope.actions"
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-Space>', builtin.git_files, {})
vim.keymap.set('n', '<C-F>', builtin.live_grep, {});

-- git log
vim.keymap.set('n', '<leader>gl', builtin.git_commits, {});

-- git branch
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {});

-- git stash list
vim.keymap.set('n', '<leader>gst', builtin.git_stash, {});

-- template

require("telescope").setup {
    pickers = {
        -- Default configuration for builtin pickers goes here:
        find_files = {
            theme = "dropdown",
            previewer = false,
        },
        git_files = {
            theme = "ivy",
            previewer = true,
        },
        live_grep = {
            theme = "ivy",
            previewer = true,
        },
        lsp_references = {
            theme = "ivy",
            previewer = true,
        },
        git_commits = {
            theme = "ivy",
            previewer = true,
        },
        git_stash = {
            theme = "dropdown",
            previewer = true,
        },
        git_branches = {
            theme = "dropdown",
            previewer = true,
        },
        extensions = {
        },
    },
    defaults = {

        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "smart" },

        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,

                ["<C-c>"] = actions.close,

                ["<Up>"] = actions.cycle_history_prev,
                ["<Down>"] = actions.cycle_history_next,

                ["<CR>"] = actions.select_default,
                ["<C-x>"] = actions.select_horizontal,
                ["<C-v>"] = actions.select_vertical,
                ["<C-t>"] = actions.select_tab,

                ["<C-u>"] = actions.preview_scrolling_up,
                ["<C-d>"] = actions.preview_scrolling_down,

                ["<PageUp>"] = actions.results_scrolling_up,
                ["<PageDown>"] = actions.results_scrolling_down,

                ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
                ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
                ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
                ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                ["<C-l>"] = actions.complete_tag,
                ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
            },

            n = {
                ["<esc>"] = actions.close,
                ["<CR>"] = actions.select_default,
                ["<C-x>"] = actions.select_horizontal,
                ["<C-v>"] = actions.select_vertical,
                ["<C-t>"] = actions.select_tab,

                ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
                ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
                ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
                ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

                ["j"] = actions.move_selection_next,
                ["k"] = actions.move_selection_previous,
                ["H"] = actions.move_to_top,
                ["M"] = actions.move_to_middle,
                ["L"] = actions.move_to_bottom,

                ["<Down>"] = actions.move_selection_next,
                ["<Up>"] = actions.move_selection_previous,
                ["gg"] = actions.move_to_top,
                ["G"] = actions.move_to_bottom,

                ["<C-u>"] = actions.preview_scrolling_up,
                ["<C-d>"] = actions.preview_scrolling_down,

                ["<PageUp>"] = actions.results_scrolling_up,
                ["<PageDown>"] = actions.results_scrolling_down,

                ["?"] = actions.which_key,
            },
        },
    },
}

