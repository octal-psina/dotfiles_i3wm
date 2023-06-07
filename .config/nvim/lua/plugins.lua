return require('packer').startup(function(use)
	-- There'are some of your pluggins down there
    -- Colorscheam
	use 'wbthomason/packer.nvim'
	use "rebelot/kanagawa.nvim"
    use "folke/tokyonight.nvim"
	use { "bluz71/vim-nightfly-colors", as = "nightfly" }
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'Mofiqul/dracula.nvim'
    --nvim tree
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
		config = function()
			require("nvim-tree").setup {}
		end
	}
    ---lsp
    use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'

    --treesitter
    --use {
    --    'nvim-treesitter/nvim-treesitter',
    --    run = ':TSUpdate'
    --}
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    --lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
        }
    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- autocmplite  
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp'
    -- autocmplite snipets
    use { 'saadparwaiz1/cmp_luasnip' }
    use 'L3MON4D3/LuaSnip'
    --colorizer
    use {
        'NvChad/nvim-colorizer.lua',
		config = function()
			require("colorizer").setup {}
		end
    }
end)
