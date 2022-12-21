require('packer').startup(function(use)
    -- mason
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
end)


require("mason").setup({
    ui = {
        icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = "",
        },
    }
})
require("mason-lspconfig").setup({ ensure_installed = {
    "sumneko_lua",
    "html",
    "marksman",
    "tailwindcss",
    "tsserver"
} })


map("n", "M", ":Mason<CR>")
