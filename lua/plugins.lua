vim.cmd('packadd packer.nvim')
-- vim.cmd('packadd nvim-treesitter')
vim.cmd('packadd nvim-lspconfig')

return require('packer').startup(
  function()
    use '9mm/vim-closer'
    use 'machakann/vim-highlightedyank'
    use 'machakann/vim-sandwich'
    use 'lifepillar/vim-gruvbox8'
    use 'tpope/vim-commentary'
    use 'honza/vim-snippets'
    use 'SirVer/ultisnips'
    use 'romainl/vim-cool'
    use 'mizlan/termbufm'
    -- use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig'
    -- completion
    use {'neoclide/coc.nvim', branch = 'release'}
    use {
      'ms-jpq/coq_nvim',
      { branch = 'coq' }
    }
    use {
      'ms-jpq/coq.artifacts',
      { branch = 'artifacts' }
    }
    -- use 'nvim-lua/completion-nvim'
    -- use 'nvim-lua/diagnostic-nvim'
    use 'tweekmonster/startuptime.vim'
    use 'wbthomason/packer.nvim'
    -- explorer
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
      config = function() require'nvim-tree'.setup {} end
    }
    -- fuzzy finder
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- status line
    use {'ojroques/nvim-hardline'} 
    -- git
    use {
      'lewis6991/gitsigns.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      },
      tag = 'release',
      config = function()
        require('gitsigns').setup()
      end
    }
    -- treesitter
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }
  end
)
