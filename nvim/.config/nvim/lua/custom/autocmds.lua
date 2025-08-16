local autocmd = vim.api.nvim_create_autocmd


autocmd("BufReadPost", {

  pattern = "*",

  callback = function()

    local line = vim.fn.line "'\""

    if
      line > 1
      and line <= vim.fn.line "$"
      and vim.bo.filetype ~= "commit"
      and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
    then
      vim.cmd 'normal! g`"'
    end

  end,

})


autocmd("BufDelete", {

  callback = function()

    local bufs = vim.t.bufs

    if #bufs == 1 and vim.api.nvim_buf_get_name(bufs[1]) == "" then
      vim.cmd "Nvdash"
    end

  end,

})


-- Go Auto Commands

local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})

autocmd("BufWritePre", {

  pattern = "*.go",

  callback = function()
    require('go.format').goimports()
  end,

  group = format_sync_grp,

})
