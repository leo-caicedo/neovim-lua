vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Crear una nueva ventana en la parte inferior y abrir el terminal
vim.api.nvim_set_keymap('n', '<leader>t', ':botright new <Bar> :terminal<CR>', { noremap = true })

-- Guardar el archivo
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true })

-- Cerrar la ventana actual
vim.api.nvim_set_keymap('n', '<C-w>', ':q<CR>', { noremap = true })

-- Seleccionar todo el texto en el buffer actual
vim.api.nvim_set_keymap('n', '<C-a>', '<Esc>ggVG<CR>', { noremap = true })

-- Salir del modo de inserción presionando "jk"
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.opt.signcolumn = "yes"

-- vim.keymap.set("n", "<leader>vwm", function()
--     require("vim-with-me").StartVimWithMe()
-- end)
-- vim.keymap.set("n", "<leader>svwm", function()
--     require("vim-with-me").StopVimWithMe()
-- end)

-- greatest remap ever
-- vim.keymap.set("x", "<leader>p", [["_dP]])

-- vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)


vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Moverce entre ventanas
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>") -- Cambia a la ventana de abajo.
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>") -- Cambia a la ventana de arriba.
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>") -- Cambia a la ventana de izquierda.
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>") -- Cambia a la ventana de derecha.
