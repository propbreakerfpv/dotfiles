P = function (msg)
    print(vim.inspect(msg))
end

require("luasnip.loaders.from_vscode").lazy_load()
