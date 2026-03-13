return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- Garante que o tema carrega antes de tudo o resto
  opts = {
    flavour = "mocha", -- Opções: latte, frappe, macchiato, mocha
    transparent_background = false,
    term_colors = true,
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      treesitter = true,
      notify = true,
      mini = {
        enabled = true,
        indentscope_color = "",
      },
      -- Integração com o teu fluxo de trabalho atual
      native_lsp = {
        enabled = true,
        virtual_text = {
          errors = { "italic" },
          hints = { "italic" },
          warnings = { "italic" },
          information = { "italic" },
        },
      },
    },
  },
}
