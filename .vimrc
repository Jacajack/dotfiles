execute pathogen#infect( )

"256 colors
set t_Co=256

"UTF-8
set encoding=utf-8

"Indent guides
let g:indent_guides_start_level = 2

"kj as Esc
inoremap kj <esc>

"^W to save
:imap <C-w> <C-o>:w<CR>
:nmap <C-w> :w<CR>

"^Q to exit
:nmap <C-q> :q<CR>

"Tabs
set tabstop=4
set softtabstop=0 noexpandtab
set autoindent
set smartindent
set shiftwidth=4

"Manpage viewer - Shift+K
runtime! ftplugin/man.vim
nnoremap K :Man <cword><CR> 

"Gruvbox
syntax on
filetype plugin indent on
colorscheme gruvbox
set background=dark
set nocursorcolumn
set nocursorline
set norelativenumber

"Git diff update time
set updatetime=250

"Cursor wrapping
set whichwrap+=<,>,h,l,[,]

"System clipboard
set clipboard=unnamedplus

"Buffers with F5 and F6
map <F5> :bp<CR>
map <F6> :bn<CR>

"Tabs with F7 and F8
map <F7> :tabp<CR>
map <F8> :tabn<CR>

"Tree with F12
map <F12> :NERDTreeToggle<CR>

"Enable folding
set foldmethod=indent
set foldlevel=99
map <space> za

"Closing buffers
nmap ,c :bp<bar>sp<bar>bn<bar>bd<CR> 

"Improve windows navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Numbered lines
set number

"Mouse
set mouse=a

"Airline config
set guifont=Liberation\ Mono\ for\ Powerline\ 10 
let g:airline_powerline_fonts = 0
let g:airline_theme="luna"
let g:airline#extensions#tabline#enabled = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Syntastic default config
let g:syntastic_asm_compiler="nasm"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Ctrl+i Ctrl+a to insert one char
nmap <C-a> i_<Esc>r
nmap <C-a> a_<Esc>r

" Filetype dependent stuff
filetype plugin on
