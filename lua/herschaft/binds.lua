vim.g.mapleader = " "
vim.keymap.set('n', '<C-k>', vim.diagnostic.open_float, { desc = "Ver erro em janela flutuante" })
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Abrir nvim-tree" })
