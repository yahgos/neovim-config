vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    view = {
        adaptive_size = true
    },
    auto_close = true,

})

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
