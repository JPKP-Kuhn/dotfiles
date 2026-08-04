require("nvchad.configs.lspconfig").defaults()

local servers = { "pyright", "clangd" }

vim.lsp.config("clangd", {
    cmd = { "clangd", "--fallback-style={BasedOnStyel: LLVM, IndentWidth: 4, TabWidth: 4, UseTab: Never}" },
    filetypes = { "c", "cpp" },
})

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
