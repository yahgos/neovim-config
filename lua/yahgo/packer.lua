-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.x',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { "rose-pine/neovim", as = "rose-pine" }
    vim.cmd('colorscheme rose-pine')
    use("nvim-tree/nvim-tree.lua")
    use { "nvim-tree/nvim-web-devicons",
        config = function()
            require 'nvim-web-devicons'.get_icons()
        end }
    use("nvim-lualine/lualine.nvim")
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use("theprimeagen/harpoon")
    use("mbbill/undotree")
    use {
      'NeogitOrg/neogit',
      requires = {
          {'nvim-lua/plenary.nvim'}, -- required
          {'sindrets/diffview.nvim'}, -- optional, for diff integration
          {'nvim-telescope/telescope.nvim'}, -- optional, for enhanced fuzzy finding
      }
  }
    use("nvim-treesitter/nvim-treesitter-context")
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }


    use 'mason-org/mason.nvim'
    use 'neovim/nvim-lspconfig'
    use {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    }
    use 'mfussenegger/nvim-dap'
    use 'theHamsta/nvim-dap-virtual-text'

    use {
        'saecki/crates.nvim',
        tag = 'v0.3.0',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('crates').setup()
        end,
    }

    use 'puremourning/vimspector'

    use("github/copilot.vim")
end)
