vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  	-- Packer can manage itself
	
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})

	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}

	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('echasnovski/mini.nvim')
	use {
		'swaits/lazyjj.nvim',
		requires = 'nvim-lua/plenary.nvim',
		config = function()
			require('lazyjj').setup()
		end
	}

	use('neovim/nvim-lspconfig') 
	use('williamboman/mason.nvim')
	use('williamboman/mason-lspconfig.nvim')

	use('hrsh7th/nvim-cmp')
	use('hrsh7th/cmp-nvim-lsp')
	use('hrsh7th/cmp-buffer')
	use('hrsh7th/cmp-path')
	use('hrsh7th/cmp-cmdline')

end)
