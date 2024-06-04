vim.g.mapleader = " "

--these will move selected lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--J alllows the cursor to stay on the beggining when pulling lines from below
vim.keymap.set("n", "J", "mzJ`z")

--ctrl d and u will jump half page and let cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--these allow search terms to stay in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--system clipboard  
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

--this will allow you to search for the word under the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.api.nvim_set_option("clipboard","unnamed")

-- Tab bindings 
vim.keymap.set("n", "<leader>t", ":tabnew<CR>")			-- space+t creates new tab
vim.keymap.set("n", "<leader>x", ":tabclose<CR>")			-- space+x closes current tab
vim.keymap.set("n", "<leader>j", ":tabprevious<CR>")		-- space+j moves to previous tab
vim.keymap.set("n", "<leader>k", ":tabnext<CR>")			-- space+k moves to next tab

-- easy split generation
vim.keymap.set("n", "<leader>v", ":vsplit<CR>")				-- space+v creates a veritcal split

-- easy split navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")						-- control+h switches to left split
vim.keymap.set("n", "<C-l>", "<C-w>l")						-- control+l switches to right split
vim.keymap.set("n", "<C-j>", "<C-w>j")						-- control+j switches to bottom split
vim.keymap.set("n", "<C-k>", "<C-w>k")						-- control+k switches to top split

-- buffer navigation
vim.keymap.set("n", "<Tab>", ":bnext <CR>")				-- Tab goes to next buffer
vim.keymap.set("n", "<S-Tab>", ":bprevious <CR>")			-- Shift+Tab goes to previous buffer

-- adjust split sizes easier
vim.keymap.set("n", "<C-Left>", ":vertical resize +3<CR>")		-- Control+Left resizes vertical split +
vim.keymap.set("n", "<C-Right>", ":vertical resize -3<CR>")	-- Control+Right resizes vertical split -

-- Automatically close things
vim.keymap.set("i", "'", "''<left>")
vim.keymap.set("i", "\"", "\"\"<left>")
vim.keymap.set("i", "(", "()<left>")
vim.keymap.set("i", "[", "[]<left>")
vim.keymap.set("i", "{", "{}<left>")
vim.keymap.set("i", "{;", "{};<left><left>")
vim.keymap.set("i", "/*", "/**/<left><left>")
