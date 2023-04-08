require("custom")

-- reset cursor to default
vim.api.nvim_create_autocmd({'VimLeave', 'VimSuspend'}, {
  command = 'set guicursor=a:hor25-blinkwait700-blinkon400-blinkoff250'
})

vim.opt.clipboard = "unnamedplus"
local clip = '/mnt/c/Windows/System32/clip.exe'
if vim.fn.has('wsl') == 1 then
  vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('Yank', { clear = true }),
    callback = function()
      vim.fn.system(clip, vim.fn.getreg('"'))
    end,
  })
end

