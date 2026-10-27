" noobvim — beginner Neovim config
" Repo: https://github.com/danielliew/noobvim

" Prefer bundled vimrc in this repo; fall back to ~/.vimrc
let s:bundled = stdpath('config') . '/vimrc'
if filereadable(s:bundled)
  execute 'source' s:bundled
elseif filereadable(expand('~/.vimrc'))
  source ~/.vimrc
endif

" Mouse: click, drag-select, scroll. Inside Zellij, hold Shift to pass
" selection through to the terminal when Zellij owns the mouse.
set mouse=a

" System clipboard for "+y / "+p (and macOS pasteboard).
set clipboard=unnamedplus

" Leader = Space (used by cheatsheet mapping and future plugins)
let mapleader = " "
let maplocalleader = " "

" Local cheatsheet — <Space>h or :NvimHelp
command! NvimHelp execute 'edit' stdpath('config') . '/CHEATSHEET.md'
nnoremap <leader>h <Cmd>NvimHelp<CR>
