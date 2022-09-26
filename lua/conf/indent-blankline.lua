-- https://github.com/lukas-reineke/indent-blankline.nvim

vim.cmd ([[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]])
vim.opt.list = true

require("indent_blankline").setup(
    {
        -- 显示当前所在区域
        show_current_context = true,
        -- 显示当前所在区域的开始位置
        show_current_context_start = true,
        -- 显示行尾符
        show_end_of_line = true
        -- space_char_blankline = " ",
        -- char_highlight_list = {
        --    "IndentBlanklineIndent1",
        -- }
    }
)
