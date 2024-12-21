return {
  'L3MON4D3/LuaSnip',
  -- follow latest release.
  version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  build = (function()
    -- Build Step is needed for regex support in snippets.
    -- This step is not supported in many windows environments.
    -- Remove the below condition to re-enable on windows.
    if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
      return
    end
    return 'make install_jsregexp'
  end)(),
  dependencies = {
    -- `friendly-snippets` contains a variety of premade snippets.
    --    See the README about individual language/framework/plugin snippets:
    --    https://github.com/rafamadriz/friendly-snippets
    {
      'rafamadriz/friendly-snippets',
      config = function()
        require('luasnip.loaders.from_vscode').lazy_load()
      end,
    },
  },
  config = function() -- This is the function that runs, AFTER loading
    local ls = require 'luasnip'

    ls.setup {
      update_events = { 'TextChanged', 'TextChangedI' },
    }

    local s = ls.snippet
    local t = ls.text_node
    local c = ls.choice_node
    local i = ls.insert_node
    ls.add_snippets('all', {
      s(
        'todo', {
          c(1, {
            t 'TODO: ',
            t 'NOTE: ',
            t 'WARN: ',
            t 'FIX: ',
            t 'HACK: ',
            t 'PERF: ',
            t 'TEST: ',
          }),
          i(2),
        }
      ),
    })
  end,
}
