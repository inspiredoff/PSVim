require('dashboard').setup {
    theme = 'hyper',
        config = {
      week_header = {
       enable = true,
      },
      shortcut = {
        { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = ' Apps',
          group = 'DiagnosticHint',
          action = 'Telescope app',
          key = 'a',
        },
        {
          desc = ' dotfiles',
          group = 'Number',
          action = 'Telescope dotfiles',
          key = 'd',
        },
      },
    },
}

        -- header = default_header(),
        -- center = {
        --     {
        --         icon = '󰙅 ',
        --         icon_hl = 'Title',
        --         desc = 'Open tree',
        --         desc_hl = 'String',
        --         key = 'e',
        --         keymap = 'SPC e',
        --         key_hl = 'Number',
        --         action = ':Neotree float'
        --     }, {
        --         icon = '󰈞 ',
        --         icon_hl = 'Title',
        --         desc = 'Find files',
        --         desc_hl = 'String',
        --         key = 'f',
        --         keymap = 'SPC f f',
        --         key_hl = 'Number',
        --         action = ':Telescope find_files'
        --     }, {
        --         icon = ' ',
        --         icon_hl = 'Title',
        --         desc = 'Find text',
        --         desc_hl = 'String',
        --         key = 'w',
        --         keymap = 'SPC f w',
        --         key_hl = 'Number',
        --         action = ':Telescope live_grep'
        --     }, {
        --         icon = ' ',
        --         icon_hl = 'Title',
        --         desc = 'Git Braches',
        --         desc_hl = 'String',
        --         key = 'b',
        --         keymap = 'SPC g b',
        --         key_hl = 'Number',
        --         action = ':Telescope git_branches'
        --     }

        -- }
    

