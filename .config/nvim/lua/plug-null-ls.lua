require('packer').startup(function(use)
    use 'jose-elias-alvarez/null-ls.nvim'
end)

local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.vale,
        -- require("null-ls").builtins.diagnostics.selene,
        null_ls.builtins.diagnostics.markdownlint.with({
            diagnostics_format = "[#{c}] #{m} (#{s})",
            filter = function(diagnostic)
                return diagnostic.code ~= "MD013/line-length"
            end,
        }),
    },
})
