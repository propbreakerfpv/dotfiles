require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = { "help", "javascript", "typescript", "c", "lua", "rust" },


    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    -- List of parsers to ignore installing (for "all")


    highlight = {
        -- `false` will disable the whole extension
        enable = true,


        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },

    autotag = { enable = true, },
}


--[[ require("nvim-treesitter.configs").setup({
    ensure_installed = {"c", "c_sharp", "css", "go", "graphql", "html", "json", "http", "javascript", "lua", "markdown", "python", "rust", "typescript", "yaml", "bash", "comment", "java", },

    sync_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },

    indent = {
        enable = true,
        disable = { "yaml" }
    },

    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    },

    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },

    autotag = { enable = true, },
})
]]
