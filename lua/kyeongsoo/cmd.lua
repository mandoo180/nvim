vim.api.nvim_create_autocmd({"BufDelete"}, {
  callback = function()
    -- local buf_ft = vim.bo.filetype
    -- print(buf_ft)
    -- if buf_ft ~= 'NvimTree' then
    --   vim.cmd [[ bnext ]]
    -- end
  end
})

vim.api.nvim_create_autocmd({"WinClosed"}, {
  callback = function()
    -- local buf_ft = vim.bo.filetype
    -- local bufnr = vim.api.nvim_get_current_buf
    -- print('WinClosed')
    -- print(buf_ft)
    -- print(bufname)
  end
})
