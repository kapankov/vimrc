set nocompatible
" Use relative numbers for all lines except the current line
set number relativenumber
" Number of spaces that a <Tab> in the file counts for
set tabstop=4
" Number of spaces in "Level of indentation"
set shiftwidth=4
" Do smart autoindenting when starting a new line
set smartindent

" set the backspace to delete normally
set backspace=indent,eol,start

filetype plugin indent on

syntax enable

" Load local .vimrc files
set secure exrc

" CodeDark
colorscheme codedark

" Disable automatic (preview) window
set completeopt-=preview
"let g:ycm_autoclose_preview_window_after_completion=1

" plugins
packadd termdebug

map <silent> <F4> :NERDTreeToggle <CR>
" Switching Windows
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" AirLine plugin settings
let g:airline_powerline_fonts=1
let g:airline_section_z='%p%% %l[%L]:%c'
" To remove the delay when switching to normal mode
set timeoutlen=1000 ttimeoutlen=0

" Save this file (F2)
map <silent> <F2> :w <CR>

" CMake configure
"nmap <silent> <C-F7> :!cmake -S . -B ./build -DCMAKE_BUILD_TYPE=Debug <CR>
"nmap <silent> <F7> :!cmake --build ./build <CR>

" Debug
"nmap <silent> <F5> :!gdb ./build/myProject <CR>
"nmap <silent> <F5> :Termdebug ./build/myProject <CR>
" Run
"nmap <silent> <C-F5> :!./build/myProject <CR>

" Build this cpp file with debug symbols
"autocmd filetype cpp nnoremap <F7> :!g++ % -g -o %:r <CR>
"autocmd filetype c nnoremap <F7> :!gcc % -g -o %:r <CR>
" Debug this file
"autocmd filetype c,cpp nnoremap <F5> :!gdb ./%:r <CR>
"autocmd filetype c,cpp nnoremap <F5> :Termdebug ./%:r <CR>
" Run this file
"autocmd filetype c,cpp nnoremap <C-F5> :!./%:r <CR>

