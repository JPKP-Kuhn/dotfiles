require("nvchad.configs.lspconfig").defaults()

vim.lsp.enable('pyright')
vim.lsp.enable('clangd')
vim.lsp.enable('opencl_language_server')

-- read :h vim.lsp.config for changing options of lsp servers 
