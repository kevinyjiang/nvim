local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end


-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]


-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
    -- core
    use "wbthomason/packer.nvim"
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use {
        "nvim-telescope/telescope.nvim",
        tag = '0.1.2',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
      "VonHeikemen/lsp-zero.nvim",
      branch = "v2.x",
      requires = {
        -- LSP Support
        {"neovim/nvim-lspconfig"},
        {"williamboman/mason.nvim"},
        {"williamboman/mason-lspconfig.nvim"},

        -- Autocompletion
        {"hrsh7th/cmp-nvim-lsp"},
        {"hrsh7th/nvim-cmp"},
        {"hrsh7th/cmp-buffer"},
        {"hrsh7th/cmp-path"},
        {"hrsh7th/cmp-cmdline"},
        {"hrsh7th/cmp-nvim-lsp"},
        {"hrsh7th/cmp-nvim-lua"},
        {"L3MON4D3/LuaSnip"},
        {"saadparwaiz1/cmp_luasnip"},
      }
    }
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }
    use {
        "nvim-treesitter/playground",
        requires = { { "nvim-treesitter/nvim-treesitter" } }
    }

    -- file tree
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use {
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = 'nvim-tree/nvim-web-devicons'
    }

    -- dashboard
    use {
        'glepnir/dashboard-nvim',
        requires = {'nvim-tree/nvim-web-devicons'}
    }
    -- colorschemes
    use "folke/tokyonight.nvim"
    use { "catppuccin/nvim", as = "catppuccin" }

    -- misc
    use "ThePrimeagen/harpoon"
    use "mbbill/undotree"
    use "tpope/vim-fugitive"
    use "RRethy/vim-illuminate"
    use "JoosepAlviste/nvim-ts-context-commentstring"
    use "lewis6991/gitsigns.nvim"
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- copilot
    use "github/copilot.vim"

    if PACKER_BOOTSTRAP then
      require("packer").sync()
    end
end)
