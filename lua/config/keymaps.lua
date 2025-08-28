-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = require("config.utils").map

-- NOTE: visual block --
-- indentation
map("v", ">", ">gv", "Indent block forwards")
map("v", "<", "<gv", "Indent block backwards")
-- move text block up/down
-- https://vim.fandom.com/wiki/Moving_lines_up_or_down
map("v", "<A-k>", ":m .-2<cr>==", "Move selected block up 1 line")
map("v", "<A-j>", ":m .+1<cr>==", "Move selected block down 1 line")
map("v", "p", "p:let @+=@0<cr>", "Paste without copying overwritten text")

-- NOTE: visual --
map("x", "J", ":move '>+1<cr>gv=gv", "Move selected block down 1 line")
map("x", "K", ":move '<-2<cr>gv=gv", "Move selected block up 1 line")
map("x", "<A-j>", ":move '>+1<cr>gv=gv", "Move selected block down 1 line")
map("x", "<A-k>", ":move '<-2<cr>gv=gv", "Move selected block up 1 line")
