
local lsp = require("lsp-zero").preset("recommended")

-- lsp.preset("recommended")

lsp.ensure_installed({ -- put any lsp servers you want here
'tsserver', --       <---/
'eslint',
'lua_ls',
'rust_analyzer',
'clangd',
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})

-- lsp.setup_nvim_cmp({
--     sources = cmp.config.sources({
--       { name = 'nvim_lsp' },
--       { name = '' },
--     }, {
--       { name = 'buffer' },
--     })
-- })


-- disable completion with tab
-- this helps with copilot setup
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = true,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})

    local opts = {buffer = bufnr, remap = false}

    -- if client.name == "eslint" then
    --     vim.cmd.LspStop('eslint')
    --     return
    -- end

    vim.keymap.set("n", "=", function ()
        print("formating")
        vim.lsp.buf.format({async = false, timeout_ms = 10000})
        
    end)

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
    vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
    vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts)
    vim.keymap.set("i", "<C-g>", vim.lsp.buf.signature_help, opts)
end)



lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})
