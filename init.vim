call plug#begin('~/.config/nvim/plugged')
Plug 'dag/vim-fish'
Plug 'bling/vim-bufferline'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'elzr/vim-json'
Plug 'benmills/vimux'
Plug 'tpope/vim-sensible'
Plug 'jwalton512/vim-blade'
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-rooter'
" async terminal commands
Plug 'skywind3000/asyncrun.vim'


" code navigation 
Plug 'fntlnz/atags.vim'

" STATUS NETRW
Plug 'tpope/vim-vinegar'

" VIM SNIPPETS
Plug 'honza/vim-snippets'

" SYNTAX CHECKING
Plug 'neomake/neomake'
Plug 'arcticicestudio/nord-vim'
Plug 'guns/xterm-color-table.vim'
Plug 'jdkanani/vim-material-theme'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" EMMET VIM
Plug 'mattn/emmet-vim'

" VIM SURROUND
Plug 'tpope/vim-surround'

" Awesome mappings for comments
Plug 'tpope/vim-commentary'

" Awesome git manager plugin
Plug 'tpope/vim-fugitive' 

" auto close brackets, parens, quotes, tags
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'

" MULTIPLER CURSORS
Plug 'terryma/vim-multiple-cursors'


" SYNTAX: HIGHLIGHT
Plug 'caiocutrim/black-coffee-molokai'

" -- Colors --
Plug 'altercation/vim-colors-solarized'
Plug 'mhartington/oceanic-next'
Plug 'tomasr/molokai'
Plug 'dracula/vim'
Plug 'freeo/vim-kalisi'

" JAVASCRIPT 
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx']  }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
Plug 'othree/yajs.vim'



" EDITOR APPEARANCE 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gregsexton/matchtag'
Plug 'Lokaltog/powerline', {'do': 'powerline/bindings/vim/'}

" VIM SCRIPTS
Plug 'Shougo/neco-vim'
Plug 'tobyS/vmustache'
" auto completion engine
Plug 'Valloric/YouCompleteMe', {'do' : './install.py'}
" PHP
Plug 'stephpy/vim-php-cs-fixer'
Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'vim-php/vim-composer'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'adoy/vim-php-refactoring-toolbox'

Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'tobyS/pdv'

" HTML
Plug 'othree/html5.vim'

" TYPE SCRIPT
Plug 'leafgarland/typescript-vim'

" babel snippets
Plug 'alnjxn/babel-vim-snippets'
Plug 'justinj/vim-react-snippets'

" TDD
Plug 'janko-m/vim-test'


" Devicons
Plug 'ryanoasis/vim-devicons'
call plug#end()

"-------------Visuals-------------------"
" some overrides to the theme
if (has('termiguicolors'))
    set termiguicolors
endif
colorscheme nord
"Get ride of ugly split borders
" hi FoldColumn ctermbg=235 ctermfg=235
" hi SignColumn ctermfg=235 ctermbg=235
" hi LineNr ctermbg=235 ctermfg=235
" hi VertSplit ctermfg=235 ctermbg=237
set nonumber
set fillchars+=vert:. "get period on vertical"
set foldcolumn=1
" some italic styles
hi Comment cterm=italic,bold
hi Identifier cterm=bold
hi Structure cterm=bold
hi Keyword cterm=bold
hi Define cterm=bold
hi Include cterm=bold ctermfg=33
hi StorageClass cterm=italic,bold ctermfg=197

"-------------Settings----------------"
set hlsearch
set autochdir
set ignorecase
set smartcase
set tags=tags
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent

" case insensitive search
set ignorecase

set smartcase

" search while typing
set incsearch

" wrap-around when searching
set wrapscan

" show pressed keys in lower right corner
set showcmd


" keep a 5 line buffer for the cursor from top/bottom of window
set scrolloff=5

set ruler

" X11 clipboard
set clipboard=unnamed

" use ~ with movement
set tildeop
" the map leader
let mapleader=","


" -- MAPPINGS --
nnoremap ; :
inoremap jj <Esc>
inoremap ;; <esc>A;<esc>
inoremap ,, <esc>A,<esc>
:tnoremap jj <C-\><C-n>
:tnoremap <A-h> <C-\><C-N><C-w>h
:tnoremap <A-j> <C-\><C-N><C-w>j
:tnoremap <A-k> <C-\><C-N><C-w>k
:tnoremap <A-l> <C-\><C-N><C-w>l
:inoremap <A-h> <C-\><C-N><C-w>h
:inoremap <A-j> <C-\><C-N><C-w>j
:inoremap <A-k> <C-\><C-N><C-w>k
:inoremap <A-l> <C-\><C-N><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l
" search
map <Leader>s :%s//g<Left><Left>

" search tag
map <Leader>tag :tag<space>

" Run the current file with rspec
map <Leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR> :call VimuxCloseRunner();

" clear panel
map <Leader>cl :call VimuxRunCommand("clear")<CR>:call VimuxCloseRunner();

" Clear the tmux history of the runner pane
map <Leader>vc :call VimuxClearRunnerHistory()<CR> :call VimuxCloseRunner();

" Run the current file with git add 
map <Leader>ga :call VimuxRunCommand("clear; git add " . bufname("%"))<CR>:call VimuxCloseRunner();

" with php
map <Leader>php :call VimuxRunCommand("clear; php " . bufname("%"))<CR> :call VimuxCloseRunner();

" with phpunit
map <Leader>phpu :call VimuxRunCommand("clear; phpunit ")<CR> :call VimuxCloseRunner()

" with phpunit current buffer
map <Leader>phpt :call VimuxRunCommand("clear; phpunit " . bufname("%"))<CR> :call VimuxCloseRunner()

" phpunit --filter:
map <Leader>phpuf :call VimuxRunCommand("clear; phpunit --filter ".expand("<cword>"))<CR><Bar>:VimuxInspectRunner

" with node
map <Leader>node :call VimuxRunCommand("clear; node " . bufname("%"))<CR> :call VimuxCloseRunner();

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" PROMPT MANAGEMENT
map tk :VimuxScrollUpInspect<CR>

map tj :VimuxScrollDownInspect<CR>

" artisan make:
map <Leader>am :VimuxPromptCommand("php artisan make:")<CR>


" artisan tinker
map <Leader>tinker :VimuxPromptCommand("php artisan tinker")<CR>

" artisan
map <Leader>a :VimuxPromptCommand("php artisan ")<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>

map <Leader>vo :call VimuxOpenRunner()<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
map <Leader>vx :VimuxInterruptRunner<CR>

" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>vz :call VimuxZoomRunner()<CR>

map <silent><Leader>r :source ~/.config/nvim/init.vim <BAR> :echo 'reloaded!'<CR>

map <Leader>i :w <CR> :source ~/.config/nvim/init.vim <CR> :PlugInstall <CR>

map <Leader>cc :w <CR> :source ~/.config/nvim/init.vim <CR> :PlugClean <CR>

map <Leader>c :noh <CR>

map <Leader>e :edit $MYVIMRC <CR>

map <Leader>n :w % <BAR> :!node % <CR>

map <Leader>f :ProjectFiles<CR>

map <Leader>g :GFiles<CR>

map <Leader>q :Tags<CR>

map <Leader>b :Buffers<CR>

nmap <Leader>u :PlugUpdate <CR>

nmap <Leader>up :PlugUpgrade <CR>

nmap <Leader>w <C-W>
nmap <Leader>V :Vexplore <CR>


noremap <silent> <F5> :silent execute "!composer dumpautoload -o" <BAR> execute ":redraw!" <CR>
            \ :echoh MoreMsg  
            \ <BAR> echo "Generating optimized autoload files" <BAR> 
            \ echoh None<CR>


" clear highlighted search term on space
noremap <silent> <Space> :nohls<CR>

" reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

"buffers
nnoremap gt :bn <CR>
nnoremap gT :bp <CR>



let g:used_javascript_libs = 'underscore,backbone, vue'


" configuration for airlineStatus
let g:airline_theme='zenburn'
let g:airline_powerline_fonts = 0
let g:airline_skip_empty_sections = 1
" show airline status job background
let g:airline_section_x = airline#section#create(['%P'])
let g:airline_section_z = airline#section#create_right(['%l','%{g:asyncrun_status}'])
let g:airline_symbols_ascii = 1
let g:airline_mode_map = {
            \ '__' : '-',
            \ 'n'  : 'N',
            \ 'i'  : 'I',
            \ 'R'  : 'R',
            \ 'c'  : 'C',
            \ 'v'  : 'V',
            \ 'V'  : 'V',
            \ '' : 'V',
            \ 's'  : 'S',
            \ 'S'  : 'S',
            \ '' : 'S',
            \ }
set noshowmode
" don't show warning in status line, because is ugly
let g:airline_extensions = ['branch', 'bufferline']
let g:airline#extensions#default#layout = [
            \ [ 'a', 'b', 'c' ],
            \ [ 'x', 'y', 'z' ]
            \ ]
let g:bufferline_echo = 0
let g:bufferline_show_bufnr=0
let g:bufferline_pathshorten=1
set invlist

" backups
set backupcopy=yes


let g:jsx_ext_required = 0 " Allow JSX in normal JS files


"-------------Settings(Plugins)---------------"
set mouse=c
let g:user_emmet_leader_key='<C-M>'

let g:eighties_enabled = 1
let g:eighties_minimum_width = 80
let g:eighties_extra_width = 0 " Increase this if you want some extra room
let g:eighties_compute = 1 " Disable this if you just want the minimum + extra
let g:eighties_bufname_additional_patterns = ['fugitiveblame'] " Defaults to [], 'fugitiveblame' is only an example. Takes a comma delimited list of bufnames as strings.

if !exists("g:ycm_semantic_triggers")
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

let g:blade_custom_directives_pairs = {
            \   'markdown': 'endmarkdown',
            \   'cache': 'endcache',
            \ }

set timeoutlen=1000 ttimeoutlen=0 
let g:netrw_liststyle = 1
let g:netrw_altv = 1
let g:netrw_winsize = 20
let g:netrw_keepdir = 1




function! NumberToggle()
    if(&relativenumber == 1)
        set nornu
        set number
    else
        set rnu
    endif
endf

nnoremap <leader>R :call NumberToggle()<!-- <cr> -->

" For conceal markers.
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif


if has('persistent_undo')      "check if your vim version supports it
    set undofile                 "turn on the feature  
    set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif     

set completeopt-=longest
set completeopt-=menuone
set completeopt-=preview
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
let g:tern_request_timeout = 1
let g:tern#filetypes = [
            \ 'jsx',
            \ 'javascript.jsx',
            \ 'vue'
            \]



" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" ultisnips configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsSnippetDirectories=['/home/caio/UltiSnips']
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>

" great ctags configuration
let g:atags_build_commands_list = [
            \ 'ag --php -g "" | ctags -L - --fields=+l -f tags.tmp',
            \ 'awk "length($0) < 400" tags.tmp > tags',
            \ 'rm tags.tmp'
            \ ]
"vimux configuration
let g:VimuxPromptString = "> "

"auto pairs config
let g:AutoPairsFlyMode = 0
let g:AutoPairsMapCR=0

" my custom micros
let @s = 'A;jj'

"-------------Auto-Commands-------------------"
augroup filesandtags 
    autocmd!
    autocmd BufWritePost ~/.Xresources :term xrdb ~/.Xresources
    autocmd BufWritePost *.php call atags#generate()
    autocmd BufEnter *.vue let b:javascript_lib_use_vue = 1 
    autocmd BufWritePost * Neomake
    autocmd FileType netrw setl bufhidden=delete
augroup end

"-------------VimusSettings-------------------"
let g:VimuxOrientation = "v"

function! DeleteFile(...)
    if(exists('a:1'))
        let theFile=a:1
    elseif ( &ft == 'help' )
        echohl Error
        echo "Cannot delete a help buffer!"
        echohl None
        return -1
    else
        let theFile=expand('%:p')
    endif
    let delStatus=delete(theFile)
    if(delStatus == 0)
        echo "Deleted " . theFile
    else
        echohl WarningMsg
        echo "Failed to delete " . theFile
        echohl None
    endif
    return delStatus
endfunction
" Just run inside root projet
function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()
"delete the current file
com! Rm call DeleteFile()
"delete the file and quit the buffer (quits vim if this was the last file)
"---- Custom Commands ----"
set splitbelow
com! RM call DeleteFile() <Bar> bd!
com! Artisanseed :split term://php artisan db:seed<CR>
com! Phpunit :split term://phpunit
com! Pf :split term://phpunit --filter <cword> 
com! Migraterefresh :split term://php artisan migrate:refresh<CR>
com! ArtisanMigrate :split term://php artisan migrate<CR>
com! -nargs=* ArtisanMake :split term://php artisan make:<args>
com! -nargs=* Migrate :split term://php artisan migrate:<args>
com! -nargs=* Artisan :split term://php artisan <args>
com! -nargs=* Npm :AsyncRun npm <args><CR>

