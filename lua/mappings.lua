-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------
-----------------------------------------------------------
---- Quit
-----------------------------------------------------------

map("n", "q", ":quit<CR>", default_opts)

-----------------------------------------------------------
---- Save Files
-----------------------------------------------------------

map("n", "<C-s>", ":write<CR>", default_opts)
map("i", "<C-s>", "<ESC>:write<CR>l", default_opts)
map("v", "<C-s>", "<ESC>:write<CR>", default_opts)

-----------------------------------------------------------
---- Selecionar tudo
-----------------------------------------------------------

map("n", "<C-a>", "ggVG", default_opts)

-----------------------------------------------------------
---- Nerd Tree
-----------------------------------------------------------

map("n", "<C-n>", ":NERDTree<CR>", default_opts)
map("n", "<C-\\>", ":NERDTreeToggle<CR>", default_opts)
map("n", "<C-f>", ":NERDTree<CR>", default_opts)

-----------------------------------------------------------
---- TagBar
-----------------------------------------------------------

map("n", "<F8>", ":TagbarToggle<CR>", default_opts)
map("i", "<F8>", ":TagbarToggle<CR>", default_opts)

-----------------------------------------------------------
---- cmds
-----------------------------------------------------------

vim.cmd [[
    let g:VM_maps = {}
    let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
    let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n
]]


