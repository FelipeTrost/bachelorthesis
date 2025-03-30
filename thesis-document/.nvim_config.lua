vim.keymap.set({ 'n', 'v' }, '<leader>so', function()
  vim.cmd('wa')
  vim.fn.system('pdflatex -halt-on-error main.tex')

  if vim.v.shell_error ~= 0 then
    print('Error compiling LaTeX')
    return
  else
    print('LaTeX compiled')
    vim.cmd('silent ! xdg-open main.pdf')
  end
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
--   debounce_delay = 1000 * 60 * 5,
--   execution_message = {
--     message = function()
--       return ""
--     end,
--   },
-- })

vim.o.autowriteall = true
