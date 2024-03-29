" ---------------------------------------------------------------
" Authors:  Ali Vakilzade
" HomePage: https://bitbucket.org/aliva/vim-toggletoolbar
" License: VIM License
" ---------------------------------------------------------------

function! ToggleToolbar()
    if &guioptions =~# "T"
        set guioptions -=T
        set guioptions-=m
    else
        set guioptions+=T
        set guioptions+=m
    endif
endfunction


if has("gui_running")
    map <silent> <F10> :call ToggleToolbar()<CR>
endif
