vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- telescope
local builtin = require('telescope.builtin')
-- local function smart_find_files()
--     local ok = vim.fn.system("git rev-parse --is-inside-work-tree")
--     if vim.v.shell_error == 0 then
--         builtin.git_files()
--     else
--         builtin.find_files()
--     end
-- end
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- window
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

