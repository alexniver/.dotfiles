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
