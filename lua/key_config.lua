function map(mode, shortcut, command)
    vim.api.nvim_set_keymap(mode, shortcut, command, {noremap = true, silent = true})
end

function icmap(shortcut, command)
    map('!', shortcut, command)
end

function nmap(shortcut, command)
    map('n', shortcut, command)
end

function imap(shortcut, command)
    map('i', shortcut, command)
end    

function vmap(shortcut, command)
    map('v', shortcut, command)
end

--map leaders
vim.g.mapleader = ','
vim.g.localleader = ','

--insert/command bindings
icmap('<C-H>', '<C-w>')

--normal bindings
nmap('<s-l>', ':bn<CR>')
nmap('<s-h>', ':bN<CR>')
nmap('<a-m>', ':e')
nmap('<F5>', ':w<CR>:!py "%"<CR>')

--normal map using leader key
nmap('<leader>ev', ':e $MYVIMRC<cr>')
nmap('<leader>sv', ':source $MYVIMRC<cr>')
nmap('<leader>o', 'o<ESC>k')
nmap('<leader><s-o>', 'O<ESC>j')
nmap('<leader>cd', ':cd %:p:h<cr>')
nmap('<leader>q', ':bd %<cr>')
nmap('<leader>f', ':args *.py<cr>')

--insert bindings
imap('jk', '<ESC>')
imap('<F5>', '<ESC>:w<CR>:!py %<CR>')

--visual bindings
vmap('p', '\"adP')
vmap('P', 'p')
vmap('<leader>\"', 'c\"<ESC>pa\"<ESC>')
vmap('<leader>\'', 'c\'<ESC>pa\'<ESC>')
