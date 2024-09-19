local neogit = require('neogit')

neogit.setup {
    integrations = {
        diffview = true
    }
}

vim.keymap.set("n", "<leader>gg", ":Neogit<CR>")
vim.keymap.set("n", "<leader>gd", ":DiffviewOpen<CR>")
vim.keymap.set("n", "<leader>gD", ":DiffviewOpen master<CR>")
vim.keymap.set("n", "<leader>gl", ":Neogit log<CR>")
vim.keymap.set("n", "<leader>gp", ":Neogit push<CR>")
