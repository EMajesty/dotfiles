local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
{
	'folke/tokyonight.nvim',
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		vim.cmd[[colorscheme tokyonight]]
	end,
},
{
	'nvim-telescope/telescope.nvim', tag = '0.1.3',
	dependencies = { 'nvim-lua/plenary.nvim' }
},
{
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
},
{
	"tpope/vim-fugitive",
},
{
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  dependencies = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
},
}

local opts = {}

require("lazy").setup(plugins, opts)
