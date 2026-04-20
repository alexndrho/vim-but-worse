return {
  'akinsho/bufferline.nvim',
  version = '*',
  lazy = false,
  dependencies = 'nvim-tree/nvim-web-devicons',
  keys = {
    { '<S-h>', '<cmd>BufferLineCyclePrev<cr>', desc = 'Previous buffer' },
    { '<S-l>', '<cmd>BufferLineCycleNext<cr>', desc = 'Next buffer' },
    { '<leader>bp', '<cmd>BufferLinePick<cr>', desc = 'Pick buffer' },
    {
      '<leader>bd',
      function()
        if #vim.fn.getbufinfo { buflisted = 1 } > 1 then
          vim.cmd 'BufferLineCyclePrev'
          vim.cmd 'bdelete #'
        else
          vim.cmd 'bdelete'
        end
      end,
      desc = 'Delete buffer',
    },
    { '<leader>bD', '<cmd>BufferLineCloseOthers<cr>', desc = 'Delete other buffers' },
  },
  opts = {
    options = {
      offsets = {
        {
          filetype = 'neo-tree',
          text = function() return vim.fn.fnamemodify(vim.fn.getcwd(), ':t'):upper() end,
          highlight = 'Directory',
          text_align = 'center',
        },
      },

      separator_style = 'slant',

      hover = {
        enabled = true,
        delay = 200,
        reveal = { 'close' },
      },

      diagnostics = 'nvim_lsp',
      diagnostics_indicator = function(count, level)
        local icon = level:match 'error' and ' ' or ' '
        return ' ' .. icon .. count
      end,
    },
  },
}
