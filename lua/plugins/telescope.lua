require('telescope').setup{
  defaults = {
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
      width = 0.75,
      height = 0.65,
      preview_cutoff = 120,
      prompt_position = "bottom",
      horizontal = {
        preview_width = function(_, cols, _)
          return math.floor(cols * 0.6)
        end,
      },
      vertical = {
        preview_height = 12,
      },
    },
    file_sorter = require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {"node_modules", ".git"},
    generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
    winblend = 0,
    border = {},
    borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'},
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' },
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
  },
  extensions = {
    -- fzf = {
    --   override_generic_sorter = true,
    --   override_file_sorter = true,
    -- }
  },
  pickers = {
    buffers = {
      sort_lastused = true,
      theme = "dropdown",
      mappings = {
        i = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
        },
        n = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
        }
      }
    }
  },
  extensions = {
    -- fzf = {
    --   fuzzy = true,                    -- false will only do exact matching
    --   override_generic_sorter = false, -- override the generic sorter
    --   override_file_sorter = true,     -- override the file sorter
    --   case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    -- }
  }
}
-- require('telescope').extensions.dap.configurations()
-- return {
--     'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- -- or                              , branch = '0.1.x',
--       dependencies = { 'nvim-lua/plenary.nvim' }
--     }

-- Дополнительные настройки и расширения для плагина Telescope
-- require('telescope').load_extension('fzf')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<Tab>', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, {})
vim.keymap.set('n', 'gr', builtin.lsp_references,
               {noremap = true, silent = true})
vim.keymap.set('n', 'gd', builtin.lsp_definitions,
               {noremap = true, silent = true})


