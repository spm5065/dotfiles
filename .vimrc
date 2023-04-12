set history=500
filetype plugin on
filetype indent on
set so=5
set wildmenu
colorscheme elflord
set hlsearch
set showmatch
set mat=2
syntax enable
set background=dark
set shiftwidth=4
set tabstop=4
set expandtab
set ai
set si
set lazyredraw
set number
set t_Co=256
hi LineNr cterm=bold ctermfg=240 ctermbg=black
set mouse=a
nnoremap <F5> <ESC>:noh<CR>
nnoremap <F6> <ESC>:term bash<CR>
nnoremap <F7> <ESC>:vsp<CR><C-W>l:term++curwin bash<CR><C-W>:set nonumber<CR>
nnoremap <F8> <ESC>:TlistToggle<CR><C-W>=
" Folds
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
nnoremap <F12> <ESC>:q<CR>
" Commenting
nnoremap <F1> <ESC>:Dox<CR>
inoremap <F1> <ESC>:Dox<CR>

if isdirectory(expand("~/.vim/bundle/ctrlp.vim"))
    set runtimepath^=~/.vim/bundle/ctrlp.vim
    let g:ctrlp_show_hidden=1
end

" Enable better whitespacing
if isdirectory(expand("~/.vim/bundle/vim-better-whitespace"))
    set runtimepath^=~/.vim/bundle/vim-better-whitespace
    let g:better_whitespace_enabled=1
    let g:strip_whitespace_on_save=1
end

" Don't use a specific ctags, use alternatives to specify which to use
" ctags-universal has better language support
let g:Tlist_Ctags_Cmd="ctags"

if !has('nvim')
    if has("mouse_sgr")
        set ttymouse=sgr
    end
end

au BufRead,BufNewFile *.bat set ff=dos

