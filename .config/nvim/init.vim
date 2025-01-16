" Covered by vim-cpp-modern, which has up to c++23
let g:polyglot_disabled = ['c++']

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Fix shit in terminal mode
tnoremap <Esc> <C-\><C-n>
autocmd TermOpen * setlocal nonumber norelativenumber

source ~/.vimrc

if has('nvim-0.8')
    source ~/.config/nvim/lsp.lua
end

