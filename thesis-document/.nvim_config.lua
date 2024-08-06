vim.keymap.set({ 'n', 'v' }, '<leader>so', function()
  vim.cmd('wa')
  vim.cmd('silent ! pdflatex main.tex && xdg-open main.pdf')
end)

vim.opt.tw = 90;
vim.opt.wrap = true
vim.cmd("set spell spelllang=en_us");

-- remap in normal mode and all of visual mode
vim.keymap.set({ 'n', 'v' }, 'j', 'gj')
vim.keymap.set({ 'n', 'v' }, 'k', 'gk')

-- require("auto-save").setup({
--   enabled = true,
--   write_all_buffers = true,
--   debounce_delay = 1000,
--   execution_message = {
--     message = function()
--       return ""
--     end,
--   },
-- })
--
-- vim.o.autowriteall = true
