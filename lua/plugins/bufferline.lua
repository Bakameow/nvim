return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        -- calling `setup` is optional for customization
        vim.opt.termguicolors = true
        require("bufferline").setup{
            options = {
                -- 使用 nvim 内置lsp
                mode = "buffer",
                diagnostics = "nvim_lsp",
                number = "ordinal",
                hover = {
                    enabled = true,
                    delay = 200,
                    reveal = {'close'}
                },
                -- 左侧让出 nvim-tree 的位置
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "",
                        highlight = "Directory",
                        text_align = "center",
                        separator = true
                    }
                },
            }
        }
    end
}
