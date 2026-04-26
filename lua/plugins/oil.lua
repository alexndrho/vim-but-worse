return {
  'refractalize/oil-git-status.nvim',
  dependencies = {
    {
      'stevearc/oil.nvim',
      opts = {
        win_options = {
          signcolumn = 'yes:2',
        },
      },
      dependencies = { { 'nvim-mini/mini.icons', opts = {} } },
      lazy = false,
      keys = {
        { '-', '<cmd>Oil<cr>', desc = 'Open parent directory' },
      },
    },
  },

  config = true,
}
