" use <F12> as a (mostly) invisble intermediate value
" This avoids remap issues with something so fundamental
inoremap <Plug>UpsqlNewline <CR>
inoremap <cr> <esc>:call upsql#case#uppernewline("\<Plug>UpsqlNewline")<cr>

inoremap <FPlug>UpsqlSpace <space>
inoremap <space> <C-O>:call upsql#case#upperspace("\<Plug>UpsqlSpace")<cr>

" trigger only if there is no tab mapping (AKA supertab snipmate etc)
let tab_map = maparg("<tab>", "i")
if tab_map == ''
    " echom "blank tabmap"
    inoremap <Plug>UpsqlTab <tab>
    inoremap <C-I> <C-O>:call upsql#case#upperspace("\<Plug>UpsqlTab")<cr>
endif
