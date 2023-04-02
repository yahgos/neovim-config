 local actions = require("telescope.actions")
 local trouble = require("trouble.providers.telescope")

 require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<c-t>"] = trouble.open_with_trouble,
        ["<esc>"] = actions.close,
    },
    n = {
        ["<c-t>"] = trouble.open_with_trouble,
    },
},
},
})

vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
