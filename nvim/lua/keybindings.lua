local keymap = vim.api.nvim_set_keymap
keymap('n', '<c-s>', ':w<CR>', {}) -- Ctrl+s to save
keymap('i', '<c-s>', '<Esc>:w<CR>a', {}) -- Ctrl+s to save
keymap('n', '<leader>y', 'viw"zy', {}) -- Yank word under cursor into z buffer
keymap('n', '<leader>v', 'viw"zp', {}) -- Paste from z buffer
keymap('n', '<C-l>', ':NERDTreeToggle<CR>', {}) -- Show NERDTree


---- LSP ----
local function nkeymap(key, map)
  keymap('n', key, map, {noremap = true})
end

nkeymap('gd', ':lua vim.lsp.buf.definition()<cr>')
nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nkeymap('gi', ':lua vim.lsp.buf.implementation()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
nkeymap('gr', ':lua vim.lsp.buf.references()<cr>')
nkeymap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')
nkeymap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
nkeymap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
nkeymap('<leader>rn', ':lua vim.lsp.buf.rename()<cr>')

---- Go ----
keymap('n', '<leader>fs', ':GoFillStruct<CR>', {})
---- SpellCheck ----
keymap('n', '<leader>.', 'Zl', {})

---- Trouble ----
keymap('n', "<leader>xx", "<cmd>TroubleToggle<CR>", {silent = true, noremap=true})


---- Telescope ----
keymap('n', "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", {silent =true, noremap = true})
keymap('n', "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", {silent =true, noremap = true})
keymap('n', "<leader>fg", "<cmd>lua require('telescope.builtin').buffers()<cr>", {silent =true, noremap = true})
keymap('n', "<leader>fg", "<cmd>lua require('telescope.builtin').help_tags()<cr>", {silent =true, noremap = true})

---- vim-illuminate ----
keymap('n', '<leader>in', '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>', {noremap=true})
keymap('n', '<leader>ip', '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>', {noremap=true})

---- Debugging ----
keymap('n', '<leader>b', ':lua require"dap".toggle_breakpoint()<CR>', {silent = true, noremap = true})
keymap('n', '<leader>B', ':lua require"dap".set_breakpoint(vim.fn.input("breakpoint condition: "))<CR>', {noremap = true, silent = true})
keymap('n', '<leader>t', ':lua require"dap-go".debug_test()<CR>', {noremap = true, silent = true}) -- Debug cursor test
keymap('n', '<F5>', ':lua require"dap".continue()<CR>', {noremap = true, silent = true})
keymap('n', '<F10>', ':lua require"dap".step_over()<CR>', {noremap = true, silent = true})
keymap('n', '<F11>', ':lua require"dap".step_into()<CR>', {noremap = true, silent = true})
keymap('n', '<F12>', ':lua require"dap".step_out()<CR>', {noremap = true, silent = true})
keymap('n', '<leader>s', ':lua require"dapui".toggle()<CR>', {noremap = true})
