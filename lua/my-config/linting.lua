local function lint()
  local clients = vim.lsp.get_active_clients({ bufnr = 0 })
  local can_format = false
  for _, client in ipairs(clients) do
    if client.server_capabilities.documentFormattingProvider then
      can_format = true
    end
  end

  if can_format then
    vim.lsp.buf.format({ async = true })
  else
    print('No LSP formatter available for this file')
  end
end

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "rust", "go" },
    callback = function() 
        vim.keymap.set('n', '<leader>=', vim.lsp.buf.format, { buffer = true, noremap = true, silent = true })
    end,
})
