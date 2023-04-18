vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- general 
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "x", '"_x')
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")
keymap.set('n', '<C-h>', '<C-w>h', opts)
keymap.set('n', '<C-l>', '<C-w>l', opts)
keymap.set('n', '<C-j>', '<C-w>j', opts)
keymap.set('n', '<C-k>', '<C-w>k', opts)


-- plugin keymaps 

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescopre
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")

-- barbar 
keymap.set('n', '<A-,>', ':BufferPrevious<CR>', opts)
keymap.set('n', '<A-.>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
keymap.set('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
keymap.set('n', '<A->>', ':BufferMoveNext<CR>', opts)
-- Goto buffer in position...
keymap.set('n', '<A-1>', ':BufferGoto 1<CR>', opts)
keymap.set('n', '<A-2>', ':BufferGoto 2<CR>', opts)
keymap.set('n', '<A-3>', ':BufferGoto 3<CR>', opts)
keymap.set('n', '<A-4>', ':BufferGoto 4<CR>', opts)
keymap.set('n', '<A-5>', ':BufferGoto 5<CR>', opts)
keymap.set('n', '<A-6>', ':BufferGoto 6<CR>', opts)
keymap.set('n', '<A-7>', ':BufferGoto 7<CR>', opts)
keymap.set('n', '<A-8>', ':BufferGoto 8<CR>', opts)
keymap.set('n', '<A-9>', ':BufferGoto 9<CR>', opts)
keymap.set('n', '<A-0>', ':BufferLast<CR>', opts)
-- Close buffer
keymap.set('n', '<A-c>', ':BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
keymap.set('n', '<C-p>', ':BufferPick<CR>', opts)
-- Sort automatically by...
keymap.set('n', '<leader>bb', ':BufferOrderByBufferNumber<CR>', opts)
keymap.set('n', '<leader>bd', ':BufferOrderByDirectory<CR>', opts)
keymap.set('n', '<leader>bl', ':BufferOrderByLanguage<CR>', opts)
