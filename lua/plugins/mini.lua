return {
  {
    'nvim-mini/mini.icons',
    opts = {},
    config = function(_, opts)
      require('mini.icons').setup(opts)
      MiniIcons.mock_nvim_web_devicons()
    end,
  },

  {
    'nvim-mini/mini.nvim',
    config = function()
      require('mini.surround').setup()

      local statusline = require 'mini.statusline'
      statusline.setup {}

      statusline.section_location = function() return '%2l:%-2v' end
    end,
  },
}
