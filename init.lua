
local lazypath = '/tmp/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({ 'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git', lazypath })
    vim.fn.system({ 'git', '-C', lazypath, 'checkout', 'tags/stable' }) -- last stable release
end
vim.opt.rtp:prepend(lazypath)
vim.opt.rtp:prepend(vim.fn.expand('%:p:h').."/myscripts")
require('lazy').setup({ spec = {} })

require('hello').hello()
