vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- define common options
local map = vim.keymap.set
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)
map("n", "q", ":qa<CR>", opts)
map("n", "qq", ":q!<CR>", opts)
map("n", "<C-s>", ":w<CR>", opts)
map("n", "Q", ":qa!<CR>", opts)

-- Resize with arrows
-- delta: 2 lines
map("n", "<sj>", ":resize -2<CR>", opts)
map("n", "<sk>", ":resize +2<CR>", opts)
map("n", "<sh>", ":vertical resize -2<CR>", opts)
map("n", "<sl>", ":vertical resize +2<CR>", opts)

-- NvimTree
map("n", "<C-e>", ":NvimTreeToggle<CR>", opts)

-- LSP
map("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
map("n", "K", ":lua vim.lsp.buf.hover()<CR>", opts)
map("n", "<C-k>", ":lua vim.lsp.buf.signature_help()<CR>", opts)
-- map("n", "rn", ":lua vim.lsp.buf.rename()<CR>", opts)
map("n", "gr", ":lua vim.lsp.buf.references()<CR>", opts)
-- bufferline
map("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)
map("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
map("n", "<C-w>", ":bdelete<CR>", opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)
