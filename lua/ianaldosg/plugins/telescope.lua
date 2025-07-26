return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
},
config = function ()
    require("telescope").setup {
        defaults = {
            file_ignore_patterns = {},
            hidden = true,
        },
        pickers = {
            find_files = {
                hidden = true,
            }
        }
    }
    vim.keymap.set("n", "<space>fd",require("telescope.builtin").find_files)
    vim.keymap.set("n", "<space>fe",function ()
        require("telescope.builtin").find_files{
            cwd = vim.fn.expand("%:p:h")}
        end)
        vim.keymap.set("n", "<space>fc", function ()
            require("telescope.builtin").find_files{
                cwd = vim.fn.stdpath("config")
            }
        end)
    end
}
