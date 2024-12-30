return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              runtime = {
                version = "LuaJIT",
              },
              diagnostics = {
                globals = { "vim", "love" },
              },
              workspace = {
                library = {
                  vim.fn.expand("$VIMRUNTIME/lua"),
                  vim.fn.expand("/usr/share/lua/5.4"),
                },
                checkThirdParty = false,
              },
              telemetry = {
                enable = false,
              },
            },
          },
        },
        tsserver = {
          on_attach = function(client, bufnr)
            client.server_capabilities.inlayHintProvider = false
          end,
          -- Configurações opcionais para o tsserver
          settings = {
            typescript = {
              format = {
                semicolons = "insert",
              },
              inlayHints = {
                enabled = false,
              },
            },
            javascript = {
              format = {
                semicolons = "remove",
              },
            },
          },
        },
      },
    },
  },
}
