" ===
" === any-jump
" ===
" Normal mode: Jump to definition under cursore
nnoremap <leader>j :AnyJump<CR>

" Visual mode: jump to selected text in visual mode
xnoremap <leader>j :AnyJumpVisual<CR>

" Normal mode: open previous opened file (after jump)
nnoremap <leader>ab :AnyJumpBack<CR>

" Normal mode: open last closed search window again
nnoremap <leader>al :AnyJumpLastResults<CR>

let g:any_jump_window_width_ratio  = 0.8
let g:any_jump_window_height_ratio = 0.9
