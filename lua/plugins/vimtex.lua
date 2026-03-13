return {
  "lervag/vimtex",
  branch = "master",
  -- Carregar apenas em ficheiros LaTeX para performance
  ft = { "tex", "bib" }, 
  
  init = function()
    -- 1. Visualizador
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_view_automatic = 1
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_complete_enabled = 1
    -- 2. Limpeza Automática de "Lixo" (.aux, .log, etc.)
    -- Ativa a limpeza ao fechar o buffer ou o Vim
    vim.g.vimtex_clean_enabled = 1
    -- Extensões específicas que queres eliminar
    vim.g.vimtex_clean_custom_extensions = {
      'aux', 'log', 'out', 'toc', 'fdb_latexmk', 'fls', 'xml', 'bcf', 'blg'
    }
    -- 3. Ignorar avisos chatos no Quickfix
    vim.g.vimtex_quickfix_ignore_filters = {
      [[Underfull \hbox]],
      [[Overfull \hbox]],
      [[LaTeX Warning: .\+ float specifier changed to]],
    }
  end,

  config = function()
    -- Desativar folding automático (facilita a leitura de ficheiros grandes)
    vim.g.vimtex_fold_enabled = 0
    
    -- Configuração de TOC (Table of Contents) - Opcional mas útil
    vim.g.vimtex_toc_config = {
      split_pos = "vert left",
      width = 30,
    }
  end
}
