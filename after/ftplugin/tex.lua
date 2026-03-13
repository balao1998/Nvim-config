-- ~/.config/nvim/after/ftplugin/tex.lua

-- 1. Visual: Quebra de linha visual para não "fugir" da janela
vim.opt_local.wrap = true
vim.opt_local.linebreak = true
vim.opt_local.spell = true -- Ativa corretor (útil em LaTeX)
vim.opt_local.spelllang = { 'pt', 'en' } -- Define idiomas

-- 2. Estrutura: Limitar a largura real do texto (Hard Wrap)
-- O padrão recomendado para LaTeX é entre 80 e 100 caracteres
vim.opt_local.textwidth = 80

-- 3. Navegação: Mover por linhas visuais em vez de linhas reais
-- Isto resolve o problema de o 'j' saltar parágrafos inteiros quando tens wrap
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, buffer = true })
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, buffer = true })

-- 4. VimTeX Specifics
-- Esconder a sintaxe LaTeX para uma leitura mais limpa (0 = ver tudo, 1 ou 2 = ocultar)
vim.opt_local.conceallevel = 2

-- 5. Formatação automática
-- 't' para auto-wrap usando textwidth, 'q' para permitir gq, 'n' para listas
vim.opt_local.formatoptions = 'tqnj'

-- Adiciona isto ao final do teu ~/.config/nvim/after/ftplugin/tex.lua
vim.keymap.set('n', ']s', ']s', { desc = "Próximo erro ortográfico", buffer = true })
vim.keymap.set('n', '[s', '[s', { desc = "Erro anterior", buffer = true })
vim.keymap.set('n', 'z=', 'z=', { desc = "Sugestões de correção", buffer = true })
vim.keymap.set('n', '<leader>s', 'z=', { desc = "Sugestões de correção", buffer = true })
