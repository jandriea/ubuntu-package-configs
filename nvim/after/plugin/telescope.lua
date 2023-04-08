-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- set key binding using which-key
local wk = require("which-key")
local tele = require("telescope.builtin")

wk.register({
  s = {
    name = "Search", -- Search Group
    ['?'] = { tele.oldfiles, "[?] Find recently opened files" },
    ['space'] = { tele.buffers, "[ ] Find existing buffers"},
    ['/'] = { function ()
      tele.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown{
        winblend = 10,
        previewer = false
      })
    end,
    "[/] Fuzzily search in current buffer"
    },
    f = { tele.find_files, "[S]earch [F]iles" },
    h = { tele.help_tags, "[S]earch [H]elp" },
    w = { tele.grep_string, "[S]earch [W]ord" },
    g = { tele.live_grep, "[S]earch [G]rep" },
    d = { tele.diagnostics, "[S]earch [D]iagnostics" }

  }
}, {mode = "n", prefix = "<leader>"} )

