local lsp = require("lsp-zero").preset({})

local on_attach = function(_, bufnr)
    -- see :help lsp-zero-keybindings
    local opts = { buffer = bufnr, remap = false }

    lsp.default_keymaps({buffer = bufnr})
    vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", opts)
    vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", opts)
    vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<cr>", opts)
    vim.keymap.set("n", "<leader>.", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>,", function() vim.lsp.buf.hover() end, opts)
end

lsp.on_attach = on_attach

lsp.set_sign_icons({
    error = '',
    warn = '',
    hint = '',
    info = ''
})

local lspconfig = require('lspconfig')

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {'lua_ls', 'tsserver', 'jsonls', 'pyright'}
})

local capabilities = vim.lsp.protocol.make_client_capabilities()

require('mason-lspconfig').setup_handlers({
    function(server)
        lspconfig[server].setup({
            on_attach = on_attach,
            capabilities = capabilities
        })
    end,
    ["lua_ls"] = function ()
        require('lspconfig').lua_ls.setup({
            on_attach = on_attach,
            capabilities = capabilities,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = {'vim'}
                    }
                }
            }
        })
    end,
    ["tsserver"] = function ()
        require('lspconfig').tsserver.setup({
            on_attach = on_attach,
            capabilities = capabilities,
            settings = {
                    javascript = {
                        inlayHints = {
                            includeInlayEnumMemberValueHints = true,
                            includeInlayFunctionLikeReturnTypeHints = true,
                            includeInlayFunctionParameterTypeHints = true,
                            includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
                            includeInlayParameterNameHintsWhenArgumentMatchesName = true,
                            includeInlayPropertyDeclarationTypeHints = true,
                            includeInlayVariableTypeHints = true,
                        },
                    },
                    typescript = {
                        inlayHints = {
                            includeInlayEnumMemberValueHints = true,
                            includeInlayFunctionLikeReturnTypeHints = true,
                            includeInlayFunctionParameterTypeHints = true,
                            includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
                            includeInlayParameterNameHintsWhenArgumentMatchesName = true,
                            includeInlayPropertyDeclarationTypeHints = true,
                            includeInlayVariableTypeHints = true,
                        },
                    },
                }
            }
        )
    end
})
