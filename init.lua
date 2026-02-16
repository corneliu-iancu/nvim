-- Leader key (space) - prefix for custom shortcuts
vim.g.mapleader = " "

-- Bootstrap lazy.nvim (plugin manager)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                disable_background = false,
                styles = { italic = false },
            })
        end,
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        config = function()
            require("gruvbox").setup({
                italic = { strings = false, emphasis = false, comments = false },
            })
        end,
    },
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                style = "storm",
                transparent = false,
                styles = {
                    comments = { italic = false },
                    keywords = { italic = false },
                },
            })
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                transparent_background = false,
                no_italic = true,
            })
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        config = function()
            require("kanagawa").setup({
                transparent = false,
                dimInactive = false,
                commentStyle = { italic = false },
                keywordStyle = { italic = false },
            })
        end,
    },
})

-- Set theme (swap the name to switch)
-- Available: "rose-pine", "gruvbox", "tokyonight", "catppuccin", "kanagawa"
vim.cmd.colorscheme("rose-pine")

-- Neovide (GUI) settings
if vim.g.neovide then
    vim.o.guifont = "FiraCode Nerd Font:h14"
    vim.g.neovide_cursor_animation_length = 0.08
    vim.g.neovide_cursor_trail_size = 0.5
    vim.g.neovide_cursor_vfx_mode = ""
    vim.g.neovide_scroll_animation_length = 0.2
    vim.g.neovide_hide_mouse_when_typing = true
    vim.g.neovide_remember_window_size = true
    vim.g.neovide_padding_top = 4
    vim.g.neovide_padding_bottom = 4
    vim.g.neovide_padding_left = 8
    vim.g.neovide_padding_right = 8
end

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Indentation (4 spaces)
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- No line wrapping
vim.opt.wrap = false

-- No swap/backup files, persistent undo instead
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search: highlight as you type, clear when done
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Full color support (needed for themes)
vim.opt.termguicolors = true

-- Keep cursor 8 lines from screen edge when scrolling
vim.opt.scrolloff = 8

-- Always show sign column (prevents layout jumping)
vim.opt.signcolumn = "yes"

-- Faster update time
vim.opt.updatetime = 50

-- Vertical guide at column 80
vim.opt.colorcolumn = "80"

-- Fill empty lines with spaces so the terminal bg doesn't bleed through
vim.opt.fillchars = { eob = " " }

-- Exit terminal mode with double Escape
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")

-- Keymaps to uncomment once you're comfortable with vimtutor:
--
-- Open file explorer
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
--
-- Move selected lines up/down in visual mode
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--
-- Half-page jump but keep cursor centered
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")
--
-- Search next/prev but keep cursor centered
-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")
--
-- Join lines without cursor jumping
-- vim.keymap.set("n", "J", "mzJ`z")
--
-- Paste over selection without losing clipboard
-- vim.keymap.set("x", "<leader>p", [["_dP]])
--
-- Yank to system clipboard
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])
--
-- Delete to void register (doesn't clobber clipboard)
-- vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")
--
-- Disable Ex mode (accidental key trap)
-- vim.keymap.set("n", "Q", "<nop>")
--
-- Search and replace word under cursor
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
