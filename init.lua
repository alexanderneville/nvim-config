require("settings")
require("mappings")

local packer_bootstrap = require("utils").ensure_packer()
require("plugins")
if (packer_bootstrap == false) then
    require("config")
end

vim.cmd("hi markdownError guifg=None guibg=None")
vim.cmd("hi clear Error")
vim.cmd("autocmd! FileType markdown setlocal tw=72")
vim.cmd("autocmd! FileType markdown setlocal spell")
