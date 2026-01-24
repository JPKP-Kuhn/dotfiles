return {
  {
    "andymass/vim-matchup",
    event = "VeryLazy",
    config = function()
      vim.g.matchup_enabled = 1
      vim.g.matchup_matchparen_offscreen = { method = "popup" } -- opcional: mostra popup se o par está fora da tela

      -- Habilita pares para aspas (em arquivos de código)
      vim.g.matchup_matchparen_deferred = 1
      vim.g.matchup_matchparen_deferred_show_delay = 100
    end,
  },
}
