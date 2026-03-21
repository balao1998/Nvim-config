---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    features = {
      highlighturl = true, -- highlight URLs at start
      autopairs = true,
      cmp = true,
      diagnostics = { virtual_text = true, underline = true },
      notifications = true,
    },
    options = {
      opt = {
        relativenumber = true, -- Números relativos (bom para saltar linhas)
        number = true,         -- Mostra o número da linha atual
        spell = false,         -- Desativado por padrão (ativamos no ftplugin de LaTeX)
        signcolumn = "yes",
        wrap = true,          -- Não quebra linhas visualmente
      },
      g = {
        -- O teu localleader já está definido como "," no lazy_setup.lua
      },
    },
    mappings = {
      n = {
        -- Atalhos para buffers
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
        ["<Leader>bd"] = { function() require("astrocore.buffer").close() end, desc = "Close buffer" },
      },
    },
  },
}
