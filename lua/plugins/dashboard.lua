return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    local function menu_item(desc, key, action)
      return {
        desc = string.format('%-30s', desc),
        key = key,
        key_format = '  %s',
        action = action,
      }
    end

    require('dashboard').setup {
      theme = 'doom',
      config = {
        header = {
          [[                                                 ]],
          [[                               __                ]],
          [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
          [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
          [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
          [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
          [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
          [[                                                 ]],
        },
        center = {
          menu_item('Find file', 'f', 'Telescope find_files'),
          menu_item('New file', 'n', 'ene | startinsert'),
          menu_item('Recent files', 'r', 'Telescope oldfiles'),
          menu_item('Restore Session', 's', function() require('persistence').load() end),
          menu_item('Plugins', 'l', 'Lazy'),
          menu_item('Quit', 'q', 'qa'),
        },
        footer = {
          'skibidy',
        },
        vertical_center = true,
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
