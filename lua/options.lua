require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- kitty setting
vim.cmd([[
augroup kitty_mp
    autocmd!
    au VimLeave * if !empty($KITTY_WINDOW_ID) | :silent !kitty @ set-spacing padding=default margin=default
    au VimEnter * if !empty($KITTY_WINDOW_ID) | :silent !kitty @ set-spacing padding=0 margin=0
augroup END
]])
