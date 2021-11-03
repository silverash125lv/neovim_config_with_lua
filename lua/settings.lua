---------------------------------------------------------------------------------
-- Neovim settings
---------------------------------------------------------------------------------

---------------------------------------------------------------------------------
-- Geral
---------------------------------------------------------------------------------

vim.g.mapleader = ","              -- chage leader to a coma
vim.opt.mouse   = "a"              -- enable mouse support
vim.opt.clipboard = "unnamedplus"  -- copy/paste to system clipboard
vim.opt.swapfile  = false          -- don't use swapfile

---------------------------------------------------------------------------------
-- Nvim UI
-- ------------------------------------------------------------------------------

vim.opt.number         = true        -- enable line numbers
vim.opt.relativenumber = true        -- use relative line numbers
vim.opt.guicursor      = ""          -- use system cursor
vim.opt.showmatch      = true        -- hilight parenthesis will match
vim.opt.foldmethod     = "marker"    -- enable folding
vim.opt.colorcolumn    = "80"        -- line marker 80 chars
vim.opt.splitright     = true        -- vertical split
vim.opt.splitbelow     = true        -- horizontal split
vim.opt.ignorecase     = true        -- ignore case letters when search
vim.opt.smartcase      = true        -- ignore lowercase for the whole pattern
vim.opt.linebreak      = true        -- wrap on word boundary

-- remove whitespace on save
vim.cmd [[ au BufWritePre * :%s/\s\+$//e ]]

---------------------------------------------------------------------------------
-- Memory, CPU
---------------------------------------------------------------------------------

vim.opt.hidden      = true           -- enable backgrounds buffers
vim.opt.history     = 100            -- remenber n lines of history
vim.opt.lazyredraw  = true           -- faster scroll
vim.opt.synmaxcol   = 240            -- max collumn for syntax hilight

---------------------------------------------------------------------------------
-- Color Scheme
-- ------------------------------------------------------------------------------

vim.opt.termguicolors = true            -- enable  24-bit color

vim.cmd [[ colorscheme pinkmare ]]     -- color theme
vim.cmd [[ hi! MatchParen cterm=NONE,bold gui=NONE,bold guibg=NONE guifg=#FFFF00 ]]


---------------------------------------------------------------------------------
-- Tabs
---------------------------------------------------------------------------------

vim.opt.expandtab = true      -- use spaces instead of tabs

vim.opt.shiftwidth = 4        -- shift 4 spaces when tab

vim.opt.tabstop = 4           -- 1 tab == 4 spaces

vim.opt.smartindent = true    -- autoindent new lines

-- don't auto commenting new lines
vim.cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- remove line lenght marker for selected filetypes
vim.cmd [[autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0]]

-- 2 spaces for selected filetypes
vim.cmd [[  autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml setlocal shiftwidth=2 tabstop=2  ]]


---------------------------------------------------------------------------------
-- Autocompletion
---------------------------------------------------------------------------------

-- insert mode completion options

vim.opt.completeopt = 'menuone,noselect'

---------------------------------------------------------------------------------
-- Terminal
---------------------------------------------------------------------------------

-- open a terminal pane on the right using :Term

vim.cmd [[command Term :botright vsplit term://$SHELL]]

-- Terminal visual tweaks

--- enter insert mode when switching to terminal

--- close terminal buffer on process exit

vim.cmd [[autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline autocmd TermOpen * startinsert autocmd BufLeave term://* stopinsert ]]

---------------------------------------------------------------------------------
-- Startup
---------------------------------------------------------------------------------

-- disable builtins plugins

local disabled_built_ins = {
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "gzip",
  "zip",
  "zipPlugin",
  "tar",
  "tarPlugin",
  "getscript",
  "getscriptPlugin",
  "vimball",
  "vimballPlugin",
  "2html_plugin",
  "logipat",
  "rrhelper",
  "spellfile_plugin",
  "matchit"
}





for _, plugin in pairs(disabled_built_ins) do
      vim.g["loaded_" .. plugin] = 1
end


-- disable nvim intro
vim.opt.shortmess:append "sI"


---------------------------------------------------------------------------------
-- Vim Airline
---------------------------------------------------------------------------------

vim.cmd [[ let g:airline_theme = 'base16_dracula' ]]

vim.cmd [[

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.colnr = ' ㏇:'
  let g:airline_symbols.colnr = ' ℅:'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.linenr = ' ␊:'
  let g:airline_symbols.linenr = ' ␤:'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.maxlinenr = '㏑'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.spell = 'Ꞩ'
  let g:airline_symbols.notexists = 'Ɇ'
  let g:airline_symbols.whitespace = 'Ξ'

  "" powerline symbols
  "let g:airline_left_sep = ''
  "let g:airline_left_alt_sep = ''
  "let g:airline_right_sep = ''
  "let g:airline_right_alt_sep = ''
  "let g:airline_symbols.branch = ''
  "let g:airline_symbols.colnr = ' :'
  "let g:airline_symbols.readonly = ''
  "let g:airline_symbols.linenr = ' :'
  "let g:airline_symbols.maxlinenr = '☰ '
  "let g:airline_symbols.dirty='⚡'

  "" old vim-powerline symbols
  "let g:airline_left_sep = '⮀'
  "let g:airline_left_alt_sep = '⮁'
  "let g:airline_right_sep = '⮂'
  "let g:airline_right_alt_sep = '⮃'
  "let g:airline_symbols.branch = '⭠'
  "let g:airline_symbols.readonly = '⭤'
  "let g:airline_symbols.linenr = '⭡'
]]

---------------------------------------------------------------------------------
-- Neovim Coc
---------------------------------------------------------------------------------





















