return {
{
  'nvim-telescope/telescope.nvim', tag = "0.1.2",
  dependencies = {'nvim-lua/plenary.nvim'},
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files", mode = "n", noremap = true, silent = true },
    { "<leader>fF", "<cmd>Telescope find_files hidden=true<cr>", desc = "Find files (hidden)", mode = "n", noremap = true, silent = true },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers", mode = "n", noremap = true, silent = true },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Grep", mode = "n", noremap = true, silent = true },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages", mode = "n", noremap = true, silent = true },
    { "<leader>gst", "<cmd>Telescope git_status<cr>", desc = "Git Status", mode = "n", noremap = true, silent = true },
    { "<leader>gcm", "<cmd>Telescope git_commits<cr>", desc = "Git Commits", mode = "n", noremap = true, silent = true },
    { "<leader>gff", "<cmd>Telescope git_files<cr>", desc = "Git Files", mode = "n", noremap = true, silent = true },
    { "<leader>sS", "<lsp_dynamic_workspace_symbols>", desc = "Goto Symbol", mode = "n", noremap = true, silent = true},
  },
},
{
  'nvim-telescope/telescope-fzf-native.nvim',
  build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
},
}
