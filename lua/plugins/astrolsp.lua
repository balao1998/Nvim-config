---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    features = {
      codelens = true,
      inlay_hints = false,
      semantic_tokens = true,
    },
    formatting = {
      format_on_save = {
        enabled = true, -- Ativa formatar ao gravar automaticamente
      },
      disabled = {
        -- "lua_ls", -- Desativa se preferires o StyLua
      },
      timeout_ms = 1000,
    },
    -- Lista de servidores para o Mason instalar automaticamente
    servers = {
      "lua_ls",
      "clangd",
      "pyright",
      "lemminx",
      "texlab", -- Essencial para o teu LaTeX
    },
    -- customize language server configuration options passed to `lspconfig`
    ---@diagnostic disable: missing-fields
    config = {
      clangd = { capabilities = { offsetEncoding = "utf-16" } },
    },
  },
}
