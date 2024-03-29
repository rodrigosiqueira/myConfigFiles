" Load Pathogen
execute pathogen#infect()

" Use Vim settings, rather then Vi settings (much better!).
set nocompatible

" Enable filetype plugins "
filetype plugin on
" set runtimepath+=~/.vim/bundle/vim-notes

" Default configuration in case there's no other definition in ftplugin
set tabstop=2
set shiftwidth=4
" set expandtab

syntax on

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set number

set noswapfile

set wildignore=*.o,*~,*.pyc,*.swp

" Paste behaviour -> Set paste altera o comportamento do expandtab
"set paste

"color scheme"
" colorscheme elflord
" colorscheme delek
" colorscheme desert
"colorscheme default

" Paper Color configuration
set laststatus=2
colorscheme PaperColor
set background=dark

" Set background type
"set background=dark

" status line
" set statusline=%(%F%m%r%h%w\ [%Y]\ %{&encoding}\ %)%=%(%l,%v\ %LL\ %p%%%)
set laststatus=2
set linespace=0
" let g:airline_theme = 'badwolf'"let g:airline_theme = 'wombat'
let g:airline_theme = 'wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1

" Keep git sign column as default (+, -, ~, etc.)
" let g:gitgutter_override_sign_column_highlight = 0
" let g:gitgutter_max_signs = 10000

"Disable autoindentation"
set noai

" Disable preview code when using omni complete"
set completeopt=menu

" Allow modelines
set modelines=1

" set spelllang=en,pt_br

" vim markdown settings
let g:vim_markdown_folding_disabled=1

" force vim to use 265 colors
if match($XDG_CURRENT_DESKTOP, "KDE") != -1
  set term=konsole-256color
" elseif match($XDG_CURRENT_DESKTOP, "GNOME") != -1
"  set term=gnome-256color
elseif match($XDG_CURRENT_DESKTOP, "XFCE") != -1
  set term=xfce
else
  set term=xterm-256color
endif

" Set column and line highlight
set cursorcolumn
set cursorline
"hi CursorLine   cterm=bold ctermbg=15 ctermfg=11 guibg=Gray40
hi CursorLineNr term=bold ctermfg=Yellow gui=bold guifg=Yellow

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

""
"map gn :bn<cr>
"map gp :bp<cr>
"map gd :bd<cr> 

"" KW
function Kwreview(...)
  let arg = get(a:, 1, "")
  let &l:makeprg="scripts/kwreview.sh " . arg
  make
  execute ":e"
endfunction

command -nargs=* Kwreview :call Kwreview(<q-args>)

""------------ Mappings --------------"
"" Create tree navigation
autocmd VimEnter * if exists(":Lexplore") | exe "map <C-n> :Lexplore <CR>" | else | exe "map <C-n> :Vexplore <CR>" | endif

let g:netrw_liststyle=3
let g:netrw_chgwin=2
let g:netrw_sort_sequence = '[\/]$,*'
let g:netrw_banner = 0
let g:netrw_winsize = -28
" Ignore some specific extensions and hidden files
let g:netrw_list_hide='.*\.swp$,.*\.o$,.*\.ko\.cmd$,tags,Module\.symvers,.*\.mod\.c$,.*\.ko$,.*\.lo$,.*\.la$,\(^\|\s\s\)\zs\.\S\+'
" let g:netrw_list_hide='.*\.swp$,.*\.o,.*\.ko.cmd,tags,Module.symvers,.*\.mod.c,.*\.ko,.*\.lo,.*\.la,\(^\|\s\s\)\zs\.\S\+'

"" Vim notes

:let g:notes_directories = ['~/Documents/Notes']
