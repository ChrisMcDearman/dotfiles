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
-- vim.cmd [[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--   augroup end
-- ]]

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
  git = {
    clone_timeout = 300, -- Timeout, in seconds, for git clones
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
   use { "karb94/neoscroll.nvim" }
  -- use { 'psliwka/vim-smoothie' }
  use { "simrat39/inlay-hints.nvim",
    config = function()
      require("inlay-hints").setup {
        show_parameter_hints = true,
        show_chaining_hints = true,
        show_type_hints = true,
        type_hints_prefix = ": ",
        max_len_align = false,
        max_len_align_padding = 1,
        right_align = false,
        right_align_padding = 7,
        highlight = "Comment",
        prefix_highlight = "Statement",
        enabled = { "TypeHint", "ChainingHint", "ParameterHint" },
      }
    end
  }
  use {
    'weilbith/nvim-code-action-menu',
    cmd = 'CodeActionMenu',
  }
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use { "wbthomason/packer.nvim" } -- Have packer manage itself
  use { "nvim-lua/plenary.nvim" } -- Useful lua functions used by lots of plugins
  -- Comment Plugin use gc or gb in visual mode
  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup {} end
  }
  -- File Explorer in Vim Ctrl+f
  use { "kyazdani42/nvim-web-devicons" }

use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function()
      vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
      require("neo-tree").setup {
        auto_close = true,
        open_on_setup = true,
        disable_netrw = true,
        hijack_netrw = true,
        update_cwd = true,
        update_focused_file = {
          enable = true,
          update_cwd = true,
          ignore_list = {}
        },
        system_open = {
          cmd = nil,
          args = {}
        },
        view = {
          width = 30,
          side = "left",
          auto_resize = false,
          mappings = {
            custom_only = false,
            list = {}
          }
        }
      }
    end
  }

  use { "akinsho/bufferline.nvim", tag = "v3.*", requires = "kyazdani42/nvim-web-devicons" }
  use { "moll/vim-bbye" }
  -- Pretty status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- Terminal Toggle
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
  end
  }
  -- Use Ctrl+fp to list recent git projects
  use {
    "ahmedkhalf/project.nvim",
    config = function() require("project_nvim").setup {} end
  }
  use { "lewis6991/impatient.nvim" } -- faster startup
  use { "lukas-reineke/indent-blankline.nvim" } -- smarter indent
  -- alpha dashboard
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require 'alpha'.setup(require 'alpha.themes.startify'.config)
    end
  }

  -- Colorschemes
  use {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup()
    end
  }

  -- LSP and Linting
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      { 'williamboman/mason.nvim' }, -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-buffer' }, -- Optional
      { 'hrsh7th/cmp-path' }, -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' }, -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' }, -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  }

  use {
    "brymer-meneses/grammar-guard.nvim",
    requires = {
      "neovim/nvim-lspconfig",
    }
  }

  -- Quick word search under cursor alt+p and alt+n
  use { "RRethy/vim-illuminate" }

  -- Telescope
  use { "nvim-telescope/telescope.nvim" }

  -- Treesitter
  use { "nvim-treesitter/nvim-treesitter" }

  -- Git
  use { "lewis6991/gitsigns.nvim" }

  -- Tophy Custom
  use { "ekickx/clipboard-image.nvim" }
  use { "mbbill/undotree" }
  use { "Pocco81/auto-save.nvim" }
  use { "Pocco81/true-zen.nvim" }
  use { "github/copilot.vim" }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
