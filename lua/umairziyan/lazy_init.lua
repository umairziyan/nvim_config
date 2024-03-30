local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then

  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",

    "--branch=stable", -- latest stable release
    lazypath,
  })
end

-- Use a folder to do all manipulation
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    spec = "umairziyan.lazy",
    change_detection = { notify = false }
})


