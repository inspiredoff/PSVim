local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup({
{"phaazon/hop.nvim"},
{
    -- neo-tree 
"nvim-neo-tree/neo-tree.nvim",
    	branch = "v3.x",
    	dependencies = { 
      		"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", 
      		"MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker", "BurntSushi/ripgrep"
}},
-- telescope
{'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        dependencies = {'nvim-lua/plenary.nvim'}
    },
-- project
{"ahmedkhalf/project.nvim"},
  --treesitter
{"nvim-treesitter/nvim-treesitter"}, 
-- lsp
{"neovim/nvim-lspconfig"},
-- cmp
{"hrsh7th/cmp-nvim-lsp"},
{'hrsh7th/cmp-buffer'},
{'hrsh7th/cmp-path'},
{'hrsh7th/cmp-cmdline'},
{'hrsh7th/nvim-cmp'},
{'hrsh7th/cmp-nvim-lsp-signature-help'},
-- null-ls
{'jose-elias-alvarez/null-ls.nvim'},
-- git
{'lewis6991/gitsigns.nvim'},
--theme
{"cocopon/iceberg.vim"},
-- coderaner
{"michaelb/sniprun",
    branch = "master",

    build = "sh install.sh",
    -- do 'sh install.sh 1' if you want to force compile locally
    -- (instead of fetching a binary from the github release). Requires Rust >= 1.65
},
{"Zeioth/compiler.nvim",
  cmd = {"CompilerOpen", "CompilerToggleResults", "CompilerRedo"},
    dependencies = { "stevearc/overseer.nvim" },
      opts = {}
  },
-- mason
{"williamboman/mason.nvim"}, 
-- gui
{"nvim-lualine/lualine.nvim"},
{'windwp/nvim-autopairs'},
{'Djancyp/outline'},
{'terrortylor/nvim-comment'},
{"akinsho/bufferline.nvim", dependencies = {'nvim-tree/nvim-web-devicons'}},
{
        'linrongbin16/lsp-progress.nvim',
        event = {'VimEnter'},
        dependencies = {'nvim-tree/nvim-web-devicons'},
        config = function() require('lsp-progress').setup() end
    }, {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        dependencies = {{'nvim-tree/nvim-web-devicons'}}
    }, {"folke/which-key.nvim"},
       { 'hrsh7th/vim-vsnip' },
    {'hrsh7th/vim-vsnip-integ'},
{
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  keys = {
    {
      "s",
      mode = { "n", "x", "o" },
      function()
require("flash").jump({
  search = {
    mode = function(str)
      return "\\<" .. str
    end,
  },
})
      end,
      desc = "Flash",
    },
    {
      "S",
      mode = { "n", "o", "x" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    },
    {
      "r",
      mode = "o",
      function()
        require("flash").remote()
      end,
      desc = "Remote Flash",
    },
    {
      "R",
      mode = { "o", "x" },
      function()
        require("flash").treesitter_search()
      end,
      desc = "Flash Treesitter Search",
    },
    {
      "<c-s>",
      mode = { "c" },
      function()
        require("flash").toggle()
      end,
      desc = "Toggle Flash Search",
    },
  },
}
})
