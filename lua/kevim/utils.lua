local M = {}

M.reload_config = function()
    local bufname = vim.fn.expand('%:t')
    local bufpath = vim.fn.expand('%:p')

    -- Check if the current file is a Vim/Neovim config file
    if bufname:match("^.lua$") or bufname:match("^init.lua$") or bufpath:match("%.lua/.*%.lua$") then
        vim.cmd('source %')
    end
end

return M
