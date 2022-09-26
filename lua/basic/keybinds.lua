-- leader 键设置为空格
vim.g.mapleader = " "

-- 默认的键位设置函数太长了，所以这里将它们重新引用一下
vim.keybinds = {
    gmap = vim.api.nvim_set_keymap,
    bmap = vim.api.nvim_buf_set_keymap,
    dgmap = vim.api.nvim_del_keymap,
    dbmap = vim.api.nvim_buf_del_keymap,
    opts = {noremap = true, silent = true}
}

-- 插入模下 jj 退出插入模式
vim.keybinds.gmap("i", "jj", "<Esc>", vim.keybinds.opts)

-- 用 H 和 L 代替 ^ 与 $
vim.keybinds.gmap("n", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("v", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("n", "L", "$", vim.keybinds.opts)
vim.keybinds.gmap("v", "L", "$", vim.keybinds.opts)

-- 插入模式下的上下左右移动
vim.keybinds.gmap("i", "<A-k>", "<up>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-j>", "<down>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-h>", "<left>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-l>", "<right>", vim.keybinds.opts)

-- 正常模式下按 ESC 取消高亮显
vim.keybinds.gmap("n", "<leader><CR>", ":nohlsearch<CR>", vim.keybinds.opts)

-- 修改分屏大小    
vim.keybinds.gmap("n", "<C-up>", "<cmd>res +1<CR>", vim.keybinds.opts)    
vim.keybinds.gmap("n", "<C-down>", "<cmd>res -1<CR>", vim.keybinds.opts)    
vim.keybinds.gmap("n", "<C-left>", "<cmd>vertical resize-1<CR>", vim.keybinds.opts)    
vim.keybinds.gmap("n", "<C-right>", "<cmd>vertical resize+1<CR>", vim.keybinds.opts)    

-- 其他设置
vim.keybinds.gmap("n", ";", ":", vim.keybinds.opts)
vim.keybinds.gmap("n", "Y", "y$", vim.keybinds.opts)
vim.keybinds.gmap("v", "Y", '"+y', vim.keybinds.opts)
vim.keybinds.gmap("v", "y", '"+y', vim.keybinds.opts)
vim.keybinds.gmap("n", "H", "5h", vim.keybinds.opts)
vim.keybinds.gmap("n", "J", "5j", vim.keybinds.opts)

-- save & quit
vim.keybinds.gmap("n", "Q", ":q<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "S", ":w<CR>", vim.keybinds.opts)
