require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snipet.lua" } })

vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/after/plugin/snipet.lua<CR>")
