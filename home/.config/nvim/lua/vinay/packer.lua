
-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

-- vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- theming
  use 'folke/tokyonight.nvim'
  use 'feline-nvim/feline.nvim'

  -- file explorer
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

  -- lsp stuff
  use 'neovim/nvim-lspconfig'
  use {
      "j-hui/fidget.nvim",
      config = function()
          require("fidget").setup()
      end
  }


  -- autocompletion
  use "hrsh7th/nvim-cmp"
  use {
      -- cmp on LSP completion
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-vsnip",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-buffer",
      after = { "hrsh7th/nvim-cmp" },
      requires = { "hrsh7th/nvim-cmp" },
  }
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  
  use "hrsh7th/vim-vsnip"

  -- rust stuff
  use "simrat39/rust-tools.nvim"
  
  -- windowing
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"

  -- fzf
  use "nvim-telescope/telescope.nvim" 
  
  -- auto brackets
  use "jiangmiao/auto-pairs"

  -- fast file navigation
  use "ThePrimeagen/harpoon"

  -- autoformatting 
  use "sbdchd/neoformat"

  -- fast commenting
  use "scrooloose/nerdcommenter" 

  -- better terminal
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

  -- Copilot
  use {
      "zbirenbaum/copilot.lua",
      event = "VimEnter",
      config = function()
        vim.defer_fn(function()
          require("copilot").setup()
        end, 100)
      end,
  }
  use {
      "zbirenbaum/copilot-cmp",
      after = { "copilot.lua" },
      config = function ()
        require("copilot_cmp").setup()
      end
  }

  -- parked for now
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }
  -- use {'neoclide/coc.nvim', branch = 'release'}
  
  -- sources
  -- https://github.com/sharksforarms/neovim-rust/blob/master/neovim-init-lsp-cmp-rust-tools.lua
end)
