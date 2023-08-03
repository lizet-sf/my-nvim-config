return {
{
  'olical/conjure',
  config = function ()
    vim.g['conjure#client#clojure#nrepl#test#current_form_names'] = {'deftest','defflow','defflow-new-system!','defflow-i18n','defspec','defflow-i18n-without-loopback','defflow-without-fn-validation', 'defflow-as-of'}
    vim.g['conjure#log#botright'] = true 
    vim.g['conjure#log#strip_ansi_escape_sequences_line_limit'] = 0
    local result = vim.api.nvim_exec([[
      let s:baleia = luaeval("require('baleia').setup { line_starts_at = 3 }")
      autocmd BufWinEnter conjure-log-* call s:baleia.automatically(bufnr('%'))]],true)

    vim.keymap.set("n", "<localleader>tt", ":ConjureCljRunCurrentTest<CR>", {noremap = true})
    vim.keymap.set("n", "<localleader>tn", ":ConjureCljCurrentNsTests<CR>", {noremap = true})
    vim.keymap.set("n", "<localleader>ta", ":ConjureCljRunAllTests<CR>", {noremap = true})

  end,
},
{
  'guns/vim-sexp',
  'tpope/vim-sexp-mappings-for-regular-people'
},
{'m00qek/baleia.nvim'},
}
