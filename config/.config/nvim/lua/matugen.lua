 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#161311',
    base01 = '#231f1d',
    base02 = '#2d2927',
    base03 = '#9d8e87',
    base04 = '#d4c3bb',
    base05 = '#e9e1de',
    base06 = '#e9e1de',
    base07 = '#e9e1de',
    base08 = '#ffb4ab',
    base09 = '#ccc89e',
    base0A = '#dac2b6',
    base0B = '#eabda6',
    base0C = '#ccc89e',
    base0D = '#eabda6',
    base0E = '#dac2b6',
    base0F = '#93000a',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#e9e1de',          bg = '#161311' })
  hi('TelescopeBorder',         { fg = '#9d8e87',             bg = '#161311' })
  hi('TelescopePromptNormal',   { fg = '#e9e1de',          bg = '#161311' })
  hi('TelescopePromptBorder',   { fg = '#9d8e87',             bg = '#161311' })
  hi('TelescopePromptPrefix',   { fg = '#eabda6',             bg = '#161311' })
  hi('TelescopePromptCounter',  { fg = '#d4c3bb',  bg = '#161311' })
  hi('TelescopePromptTitle',    { fg = '#161311',             bg = '#eabda6' })
  hi('TelescopePreviewTitle',   { fg = '#161311',             bg = '#dac2b6' })
  hi('TelescopeResultsTitle',   { fg = '#161311',             bg = '#ccc89e' })
  hi('TelescopeSelection',      { fg = '#e9e1de',          bg = '#2d2927' })
  hi('TelescopeSelectionCaret', { fg = '#eabda6',             bg = '#2d2927' })
  hi('TelescopeMatching',       { fg = '#eabda6',             bold = true })
end

 -- Register a signal handler for SIGUSR1 (matugen updates)
 local signal = vim.uv.new_signal()
 signal:start(
   'sigusr1',
   vim.schedule_wrap(function()
     package.loaded['matugen'] = nil
     require('matugen').setup()
   end)
 )

 return M
