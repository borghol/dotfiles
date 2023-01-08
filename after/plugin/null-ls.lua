local null_ls = require("null-ls")

local on_attach = function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
  vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
  vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "gy", function() vim.lsp.buf.type_definition() end, opts)

  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<C-k>", function() vim.lsp.buf.signature_help() end, opts)

  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>e", function() vim.diagnostic.open_float() end, opts)

  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>ac", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>aa", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>af", function() vim.lsp.buf.format { async = true } end, opts)

  vim.keymap.set("n", "<leader>aj", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "<leader>ak", function() vim.diagnostic.goto_prev() end, opts)
end

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.cfn_lint,
    -- null_ls.builtins.diagnostics.cspell,
    -- null_ls.builtins.code_actions.cspell,
    null_ls.builtins.diagnostics.xo, -- ESLint
    null_ls.builtins.code_actions.xo, -- ESLint
    null_ls.builtins.diagnostics.yamllint
  },
  on_attach = on_attach
})

