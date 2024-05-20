return require("packer").startup(function(use)
    use({ "wbthomason/packer.nvim" })

    use({ "rebelot/kanagawa.nvim" })
    use({ "ellisonleao/gruvbox.nvim" })
    use({ "catppuccin/nvim", as = "catppuccin" })

    use({
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        requires = {
            { "nvim-lua/plenary.nvim" },
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                run = "make",
            },
        },
    })
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use({ "preservim/vim-markdown" })
    -- use({ "vim-pandoc/vim-pandoc-syntax" })
    use({ "lukas-reineke/indent-blankline.nvim" })
    use({ "junegunn/fzf" })
    use({ "junegunn/fzf.vim" })
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local ts_update =
                require("nvim-treesitter.install").update({
                    with_sync = true,
                })
            ts_update()
        end,
    })
    use({ "windwp/nvim-ts-autotag" })
    -- use({ "udalov/kotlin-vim" })
    use({ "nvim-treesitter/nvim-treesitter-context" })
    use({ "tpope/vim-surround" })
    use({ "lewis6991/gitsigns.nvim" })
    use({ "numToStr/Comment.nvim" })
    use({ "norcalli/nvim-colorizer.lua" })
    use({ "mfussenegger/nvim-jdtls" })
    use({ "windwp/nvim-autopairs" })
    use({ "neovim/nvim-lspconfig" })
    use({ "nvimtools/none-ls.nvim" })
    use({ "kevinhwang91/nvim-bqf" })
    use({ "folke/trouble.nvim" })
    use({ "L3MON4D3/LuaSnip", run = "make install_jsregexp" })
    use({
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-nvim-lsp-signature-help",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "saadparwaiz1/cmp_luasnip",
            "onsails/lspkind.nvim",
        },
    })
    if Options.bootstrap then
        print("start packer bootstrap")
        require("packer").sync()
        print("finish packer bootstrap")
    end
end)
