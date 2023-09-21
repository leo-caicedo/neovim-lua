require("bufferline").setup {}

vim.api.nvim_set_keymap('n', '<TAB>', ':BufferLineCycleNext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader><TAB>', ':BufferLineCyclePrev<CR>', { noremap = true })
