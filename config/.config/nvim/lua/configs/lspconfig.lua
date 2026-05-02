require("nvchad.configs.lspconfig").defaults()

local servers = { "pyright", "clangd", "python-lsp-server", "lua-language-server", "clangd-format" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
