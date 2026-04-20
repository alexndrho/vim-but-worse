return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter',
    opts = {
      delay = 0,

      spec = {
        { '<leader>b', group = 'Buffer' },
        { '<leader>q', group = 'Quit/Session' },
        { '<leader>s', group = 'Search', mode = { 'n', 'v' } },
        { '<leader>h', group = 'Git Hunk', mode = { 'n', 'v' } },
        { 'gr', group = 'LSP Actions', mode = { 'n' } },
      },
    },
  },
}
