-- recommended setting for tabs from the documentation
-- https://neovim.io/doc/user/options.html#'tabstop'
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.cmd("colorscheme tokyonight")


-- TODO: figure out where to best put these
--
-- TODO: figure out, why I can only switch to library modules once
--       and after going back with ctrl+o I can't switch to the external code anymore
--
--TODO: figure out for which modes I should set these
vim.keymap.set({ "n", "v" }, "gd", vim.lsp.buf.definition)
vim.keymap.set({ "n", "v" }, "gr", vim.lsp.buf.references)
vim.keymap.set({"n", "v"}, "gI", vim.lsp.buf.implementation)
vim.keymap.set({"n", "v"}, "gY", vim.lsp.buf.type_definition)
vim.keymap.set({"n", "v"}, "gD", vim.lsp.buf.declaration)
vim.keymap.set({"n", "v"}, "K", vim.lsp.buf.hover)
vim.keymap.set({"n", "v"}, "gK", vim.lsp.buf.signature_help)
vim.keymap.set({"i"}, "<c-k>", vim.lsp.buf.signature_help)
vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set({"n", "v"}, "<leader>cc", vim.lsp.codelens.run)
vim.keymap.set({"n", "v"}, "<leader>cC", vim.lsp.codelens.refresh)
--vim.keymap.set({"n", "v"}, "<leader>cr", vim.lsp.codelens.rename)

-- { "<leader>cR", LazyVim.lsp.rename_file, desc = "Rename File", mode ={"n"}, has = { "workspace/didRenameFiles", "workspace/willRenameFiles" } }, TODO: checkout if I can imlement this
-- { "<leader>cA", LazyVim.lsp.action.source, desc = "Source Action", has = "codeAction" }, TODO: checkout if I want to implement this

