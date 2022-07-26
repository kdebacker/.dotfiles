--------------------------------------------------------------------------
-- General settings
--------------------------------------------------------------------------

-- File Encoding
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Search
vim.opt.hlsearch = false
vim.opt.smartcase = true

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Scroll
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- File history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("XDG_DATA_HOME") .. "/nvim/undodir"
vim.opt.undofile = true

-- Rendering
vim.opt.updatetime = 300
vim.opt.redrawtime = 10000

-- Misc
vim.opt.signcolumn = "yes:1"
vim.opt.colorcolumn = "120"
vim.opt.spell = true
vim.opt.wildmode = "longest:full,full"
vim.opt.wrap = false
vim.opt.joinspaces = false
vim.opt.exrc = true
vim.opt.errorbells = false

-- filetype plugin on

--------------------------------------------------------------------------
-- Key maps
--------------------------------------------------------------------------

vim.g.mapleader = " "

vim.keymap.set("v", "<", "<gv", { noremap = true })
vim.keymap.set("v", ">", ">gv", { noremap = true })

vim.keymap.set("i", "<C-c>", "<esc>", { noremap = true })

--------------------------------------------------------------------------
-- Plugins
--------------------------------------------------------------------------

local fn = vim.fn
local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
end

vim.cmd("packadd packer.nvim")

return require("packer").startup(function(use)
   use("wbthomason/packer.nvim")

   -- Nord colortheme
   use("shaunsingh/nord.nvim")

   -- Telescope
   use("nvim-lua/plenary.nvim")
   use("nvim-lua/popup.nvim")
   use("nvim-telescope/telescope.nvim")

  -- Automatically set up your configuration after cloning packer.nvim
  if packer_bootstrap then
    require("packer").sync()
  end
end)



