local enabled_lsp = {
    "rust_analyzer",
    "gopls",
    "clangd",
}

vim.lsp.enable(enabled_lsp)

-- keymaps
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
        local opts = { buffer = ev.buf, silent = true}

        opts.desc = "Go to definition"
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)

        opts.desc = "Rename symbol"
        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts)

        opts.desc = "Show diagnostic"
        vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
    end
})
