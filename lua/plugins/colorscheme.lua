return {
  {
    "sainnhe/everforest", -- Nome do plugin
    lazy = false, -- Carregar automaticamente
    priority = 1000, -- Prioridade para carregar o esquema de cores
    config = function()
      -- Configurações opcionais do Everforest
      vim.g.everforest_background = "soft" -- Opções: "hard", "medium", "soft"
      vim.g.everforest_enable_italic = 1 -- Habilita itálico
      vim.g.everforest_disable_italic_comment = 0 -- Habilita itálico em comentários
      vim.g.everforest_diagnostic_text_highlight = 1 -- Destaca texto em diagnósticos

      -- Define o esquema de cores
      vim.cmd("colorscheme everforest")
    end,
  },
}
