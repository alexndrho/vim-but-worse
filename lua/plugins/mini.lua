return {
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
