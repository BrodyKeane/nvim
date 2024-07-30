vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.smartindent = true

vim.opt.wrap = false
vim.opt.incsearch = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

--detect os
if package.config:sub(1,1) == "\\" then
    --windows
    vim.opt.undodir = os.getenv("UserProfile") .. "/.vim/undodir"
else
    --linux
    vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
end

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 50

-- error messages
vim.diagnostic.config({
    virtual_text = {
        prefix = "", -- ■ 
        suffix = "",
        format = function(diagnostic)
          return " " .. diagnostic.message .. " "
        end,
    },
    signs = true,
    update_in_insert = true,
    underline = false,
    severity_sort = true,
    float = {
        source = true, -- Or "if_many"
    },
})

