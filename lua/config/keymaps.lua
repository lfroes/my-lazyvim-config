-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Exibir mensagem de aviso ao tentar usar as setas
vim.keymap.set("n", "<Up>", function()
  print("Use 'k' para cima!")
end, { desc = "Desabilitar seta para cima" })
vim.keymap.set("n", "<Down>", function()
  print("Use 'j' para baixo!")
end, { desc = "Desabilitar seta para baixo" })
vim.keymap.set("n", "<Left>", function()
  print("Use 'h' para esquerda!")
end, { desc = "Desabilitar seta para esquerda" })
vim.keymap.set("n", "<Right>", function()
  print("Use 'l' para direita!")
end, { desc = "Desabilitar seta para direita" })

-- Desativa terminal padrao do NeoVim
-- vim.api.nvim_set_keymap("", "<c-/>", "", { noremap = true })
vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- Mapeamento com multibuffer
vim.keymap.set("n", "<S-h>", "<cmd>FzfLua buffers<CR>", { desc = "Abrir buffer" })
