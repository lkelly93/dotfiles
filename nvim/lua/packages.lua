require('packer').startup(function()
  use {'goolord/alpha-nvim'} -- Dashboard
  use {'wbthomason/packer.nvim'} -- Package Manager
  use {'vim-airline/vim-airline'} -- Status Bar
  use {'scrooloose/nerdcommenter'} -- Easier Commenting
  use {'p00f/nvim-ts-rainbow'} -- Rainbow Parans
  use {'scrooloose/nerdtree'} -- File Explorere
  use {'morhetz/gruvbox'} -- GruvBox
  use {
	'kamykn/spelunker.vim',
	requires = {
			'kamykn/popup-menu.nvim'
		   }
      } -- Spell Check
  use {'sbdchd/neoformat'} -- Autoformat
  use {
	'folke/trouble.nvim',
	requires = "kyazdani42/nvim-web-devicons",
      } -- Show All Errors in File
  use {
	'nvim-telescope/telescope.nvim',
	requires = {
			'nvim-lua/plenary.nvim',
			'BurntSushi/ripgrep',
			'sharkdp/fd',
		   }
      } -- Fuzzy Finder
  use {
        'RRethy/vim-illuminate',
      } -- Highlight word under cursor in buffer
  -- LSP Plugins
  use {'nvim-treesitter/nvim-treesitter'}
  use {'neovim/nvim-lspconfig'}
  use {'williamboman/nvim-lsp-installer'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-vsnip'}
  use {'hrsh7th/vim-vsnip'}
  -- Debugging
  use {
        'mfussenegger/nvim-dap',
	requires = {
			'leoluz/nvim-dap-go', -- For Go Delve
			'rcarriga/nvim-dap-ui', -- For fancy UI
		   }
      }

  -- Language Specific Plugins
  use {'ray-x/go.nvim'} -- Golang
end)
