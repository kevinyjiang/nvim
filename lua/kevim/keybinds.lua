local opts = { noremap = true, silent = true }

local map = vim.api.nvim_set_keymap

map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
--[[ map("n", "<leader>ls", ":NvimTreeFindFile<cr>", opts) ]]
map("n", "<leader>g", ":lua _LAZYGIT_TOGGLE()<cr>", opts)
map("n", "<leader>m", ":MinimapToggle<cr>", opts)


map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- tab through buffers
map("n", "<S-l>", ":bnext<cr>", opts)
map("n", "<S-h>", ":bprevious<cr>", opts)

-- persist visual line indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- don't overwrite delete register on paste over
map("v", "p", '"_dP', opts)

-- yank to system clipboard
--[[ map("n", "<leader>y", '"+y', opts) ]]
--[[ map("v", "<leader>y", '"+y', opts) ]]

-- Visual Block --
-- Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv", opts)
map("x", "K", ":move '<-2<CR>gv-gv", opts)
map("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
map("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- append line below to current but keep cursor in place
map("n", "J", "mzJ`z", opts)

-- keep cursor centered during page up/down
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

--[[ map("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { noremap = true, silent = false }) ]]

-- reload config
map("n", "<leader><leader>", ":lua require'kevim.utils'.reload_config()<cr>", opts)
