require('nvim-tree').setup {
    sort_by = "case_sensitive",
    disable_netrw = true,
    hijack_netrw = true,
    open_on_setup_file = false,
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        debounce_delay = 50,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    update_focused_file = {
        enable = true,
        update_root = false,
        ignore_list = {},
    },
    view = {
        adaptive_size = false,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
        icons = {
            git_placement = "after",
            glyphs = {
                git = {
                    unstaged = "-",
                    staged = "s",
                    untracked = "u",
                    renamed = "r",
                    deleted = "d",
                    ignored = "i",
                },
            },
        },
    },
    filters = {
        custom = { "^.git$" },
        dotfiles = false,
    },
    git = {
        ignore = false,
    },
    -- actions.open_file.quit_on_open = true,
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
}


map("n", "t", ":NvimTreeToggle<CR>")
