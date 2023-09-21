vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.showmatch = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.background = 'dark'

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.showcmd = true

vim.opt.clipboard:append('unnamedplus')

-- Habilitar la detección automática de cambios en archivos
vim.opt.autoread = true

-- Configurar el autocmd para restaurar la posición del cursor al abrir archivos
if vim.fn.has("autocmd") == 1 then
    vim.cmd([[
        augroup RestoreCursorPos
            autocmd!
            autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif
        augroup END
    ]])
end
-- Resaltar la línea actual donde se encuentra el cursor
vim.opt.cursorline = true
-- Configurar la codificación a UTF-8
vim.opt.encoding = 'utf-8'
-- Mantener la línea de estado incluso si hay una sola ventana
vim.opt.laststatus = 2
-- Mantener los archivos abiertos en el buffer cuando se cierran las ventanas
vim.opt.hidden = true
