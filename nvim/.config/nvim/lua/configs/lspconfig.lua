require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "clangd", "jdtls", "pyright" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
