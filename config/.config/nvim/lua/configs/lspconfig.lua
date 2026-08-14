require("nvchad.configs.lspconfig").defaults()

local servers = { "pyright", "clangd" }

vim.lsp.config("clangd", {
    cmd = { "clangd", "--background-index" },
    filetypes = { "c", "cpp" },
})
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
