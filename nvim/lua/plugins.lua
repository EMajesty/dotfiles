return {
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
    "neovim/nvim-lspconfig",
},
{
	'nvim-telescope/telescope.nvim',
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
    "mason-org/mason.nvim",
    opts = {},
},
{
    "mason-org/mason-lspconfig.nvim"
},
-- {
--   'VonHeikemen/lsp-zero.nvim',
--   branch = 'v2.x',
--   dependencies = {
--     -- LSP Support
--     {'neovim/nvim-lspconfig'},             -- Required
--     {'williamboman/mason.nvim'},           -- Optional
--     {'williamboman/mason-lspconfig.nvim'}, -- Optional
--
--     -- Autocompletion
--     {'hrsh7th/nvim-cmp'},     -- Required
--     {'hrsh7th/cmp-nvim-lsp'}, -- Required
--     {'L3MON4D3/LuaSnip'},     -- Required
--   }
-- },
{
    'hrsh7th/nvim-cmp'
},
{
    "L3MON4D3/LuaSnip"
},
{
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl", 
    opts = {},
    config = function()
        require("ibl").setup()
    end,
},
{
    'numToStr/Comment.nvim',
    opts = {},
    lazy = false,
},
{
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({global = false})
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
},
{
    "apyra/nvim-unity-sync",
    lazy = false,
    config = function()
        require("unity.plugin").setup()
    end,
},
}
