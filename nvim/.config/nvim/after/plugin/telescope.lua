vim.keymap.set("n", "<C-p>", function()
    require('telescope.builtin').git_files()
end, { noremap = true })

vim.keymap.set("n", "<leader>ps", function()
    require('telescope.builtin').live_grep()
end, { noremap = true })

vim.keymap.set("n", "<leader>pf", function()
    require('telescope.builtin').find_files()
end, { noremap = true })

vim.keymap.set("n", "<leader>gc", function()
    require('telescope.builtin').git_branches()
end, { noremap = true })

vim.keymap.set("n", "<leader>pb", function()
    require('telescope.builtin').buffers()
end, { noremap = true })

vim.keymap.set("n", "<leader>vh", function()
    require('telescope.builtin').help_tags()
end, { noremap = true })

require('telescope').setup({
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        mappings = {
            i = {
                ["<esc>"] = require('telescope.actions').close
            }
        }
    }
})
