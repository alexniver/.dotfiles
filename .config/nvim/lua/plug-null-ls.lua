require('packer').startup(function(use)
    use 'jose-elias-alvarez/null-ls.nvim'
end)

require("null-ls").setup({
    sources = {
        require("null-ls").builtins.diagnostics.vale,
        -- require("null-ls").builtins.diagnostics.selene,
        require("null-ls").builtins.diagnostics.markdownlint.with({
            diagnostics_format = "[#{c}] #{m} (#{s})",
            filter = function(diagnostic)
                return diagnostic.code ~= "MD013/line-length"
            end,
        }),
    },
})
