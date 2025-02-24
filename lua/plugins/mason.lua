return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
        -- mason config
        require('mason').setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })
        -- mason-lspconfig
        require('mason-lspconfig').setup({
            -- A list of servers to automatically install if they're not already installed
            ensure_installed = { 'lua_ls', 'rust_analyzer', 'clangd', 'yamlls' },
        })
    end
}
