"-----------------------------------------------------------------------------
" Plugins
" -----------------------------------------------------------------------------

call plug#begin('$HOME/vimfiles/plugged')
"call plug#begin('~/.vim/plugged')

" Enhance viewing the list of previous and current files
Plug 'gpanders/vim-oldfiles'

" automatic typo spelling correction
Plug 'tpope/vim-abolish'
Plug 'jdelkins/vim-correction'

" Drastically improve insert mode performance in files with folds.
Plug 'Konfekt/FastFold'

" prose linter
Plug 'errata-ai/vale'
Plug 'lgalke/vim-compiler-vale'

" Better display unwanted whitespace.
" Plug 'ntpeters/vim-better-whitespace'

" A number of useful motions for the quickfix list, pasting and more.
Plug 'tpope/vim-unimpaired'

" show registers when you type "
Plug 'junegunn/vim-peekaboo'

" displays a calendar
Plug 'itchyny/calendar.vim'

" use ctrl-a to increment dates
Plug 'tpope/vim-speeddating'

" add more detail for pressing ga
Plug 'tpope/vim-characterize'

" adds new text objects and enhancements to default text object behaviour
Plug 'wellle/targets.vim'

" visualize marks in a column
Plug 'kshenoy/vim-signature'

" Navigate and manipulate files in a tree view.
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-mapping-mark-children.vim'

" Modify * to also work with visual selections.
Plug 'nelstrom/vim-visual-star-search'

" Handle multi-file find and replace.
Plug 'mhinz/vim-grepper'

" Run a diff on 2 directories.
Plug 'will133/vim-dirdiff'

" Briefly highlight which text was yanked.
Plug 'machakann/vim-highlightedyank'

" Highlight which character to jump to when using horizontal movement keys.
Plug 'unblevable/quick-scope'

" Use two keystrokes to jump to a location in the file
Plug 'justinmk/vim-sneak'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Show git file changes in the gutter.
Plug 'mhinz/vim-signify'

" Automatically show Vim's complete menu while typing https://github.com/othree/vim-autocomplpop/blob/master/doc/acp.txt
Plug 'vim-scripts/AutoComplPop'

" Asciidoctor plugin
Plug 'habamax/vim-asciidoctor'

" Automatically clear search highlights after you move your cursor.
Plug 'haya14busa/incsearch.vim'

" Surround text
Plug 'tpope/vim-surround'

" Better manage Vim sessions.
Plug 'tpope/vim-obsession'

" Zoom in and out of a specific split pane (similar to tmux).
Plug 'dhruvasagar/vim-zoom'

" emmet
Plug 'mattn/emmet-vim'

" Integrate fzf with Vim.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

" Integrates Fugitive with GitHub
Plug 'tpope/vim-rhubarb'

" Plug 'dense-analysis/ale'
Plug 'w0rp/ale'
" post install (yarn install | npm install) then load plugin only for editing supported files

" Prettifying code files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'xml'] }

" Font size changer
Plug 'drmikehenry/vim-fontsize'

" Spelling checker enhancer
Plug 'inkarkat/vim-ingo-library' | Plug 'inkarkat/vim-SpellCheck'

" Displays CSS code colors
Plug 'ap/vim-css-color'

" colorschemes
Plug 'gruvbox-community/gruvbox'
Plug 'preservim/vim-colors-pencil'

" Git tool
Plug 'tpope/vim-fugitive'

" improves quickfix list behavior
Plug 'romainl/vim-qf'

" adds a preview for quickfix list
Plug 'bfrg/vim-qf-preview'

" Git commit browser tool to be used with fugitive
Plug 'junegunn/gv.vim'

" for use with xml.vim ftplugin
Plug 'https://github.com/adelarsq/vim-matchit'

" Adds vertical lines for indented code
Plug 'Yggdroot/indentLine'

" Languages and file types.
Plug 'chrisbra/csv.vim'
Plug 'othree/html5.vim'
Plug 'othree/xml.vim'
Plug 'tpope/vim-git'

call plug#end()

" -----------------------------------------------------------------------------
" Vim settings
" -----------------------------------------------------------------------------

set autoindent                 " copy indent from current line when starting a new line
set autoread                   "autoreload the file if is has been changed outside Vim
set backspace=indent,eol,start " Allows you to backspace to the left of the Insert mode entry character
set cmdheight=2                " give more space for displaying messages
set complete+=.,w,b,u,i            " sets the completion mode for the built-in insert completion - see also set omnifunc=syntaxcomplete#Complete
set cursorline                 " highlight current line - this may slow down performance
set cpo-=J                     " sets the definition of a sentence to be one space after the period - for two spaces use set cpo+=J
set encoding=utf-8             " set encoding to UTF-8 (default was "latin1")
set expandtab smarttab         " convert <TAB> key-presses to spaces
set filetype=on
set formatoptions=tcqrn1
set hidden                     " It hides buffers instead of closing them. This means that you can have unwritten changes to a file and open a new file using :e, without being forced to write or undo your changes first.
set history=10000
set hlsearch                   " highlight search matches
set incsearch                  " search as characters are entered, which is incremental search
set laststatus=2               " always show statusline (even with only single window)
set lazyredraw                 " redraw screen only when we need to
set linespace=2
set listchars=eol:¬,nbsp:_,trail:•,extends:>,precedes:<" sets whitespace characters to show when turned on with F2, tabs converted to spaces with smarttab
set matchpairs+=<:>            " Use % to jump between pairs
set more                     " Avoids breaking up a long listing into screens with --- more ---
set number                     " show line numbers
set mmp=5000
set mouse=a                    " enable mouse support (might not work well on Mac OS X)
set nobackup
set nocompatible               " This should be set by default in Vim8, but just in case
set nocp
set nostartofline
set noswapfile
set nowrap                     " do not wrap lines
set numberwidth=6              " sets the gutter width
set omnifunc=syntaxcomplete#Complete " not on by default but MUST be here for XML insert completion or it will be really slow
set path=.                     " sets the default path used for :find and gf and others to the directory the current buffer is in only
set regexpengine=1
set relativenumber             " set relative line numbers
set ruler                      " show line and column number of the cursor on right side of statusline
set scrolloff=0                " keep this number of lines between the cursor and the edge of the screen
set shiftwidth=2               " number of spaces to use for each step of (auto)indent
set shortmess=I                " turns off Bram's message on start-up (I)
set showcmd
set sidescroll=1               " scrolls the window left/right to see text outside the window
set showmatch                  "turn off highlight matching parentheses / brackets [{()}]
set noshowmode                 " turn off statusline mode because airline has it built in
set smartcase
set smartindent                " even better autoindent (e.g. add indent after '{')
set softtabstop=2       " backspace after pressing <TAB> will remove up to this many spaces
set spelllang=en_us
set splitbelow
set splitright
set tabstop=2                  " width that a <TAB> character displays as
set termguicolors
set textwidth=0                " best to make this the same as the tabstop
set timeoutlen=150             " If less than 200, leader mappings don't work. Timeout after typing a mapping code before aborting it and carrying out the behaviour of the keys typed so far
set ttimeoutlen=80             " Time Vim will wait after each keycode keystroke such as <esc> before aborting it and carrying out the behaviour of the keys typed so far
set ttyfast
set updatetime=4000            " related to when a swapfile is written default is 4 s which can cause delays - swapfile currently off with set noswapfile
" set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v] " statusline comes from airline settings
" set statusline=%t%=[%{strlen(&fenc)?&fenc:'none'},%{&ff}]\ %h%m%r%y\ %c\ %l/%L\ %P
set undofile
set wrapmargin=0
set wildmenu                   " visual autocomplete for command menu
set wildmode=list:longest,full

runtime! macros/matchit.vim

" -----------------------------------------------------------------------------
" Color settings
" -----------------------------------------------------------------------------

" Specific colorscheme settings (must come before setting your colorscheme).
if !exists('g:gruvbox_contrast_light')
  let g:gruvbox_contrast_light='hard'
endif

" Set the color scheme.
colorscheme gruvbox
set background=dark

" Specific colorscheme settings (must come after setting your colorscheme).
if (g:colors_name == 'gruvbox')
  if (&background == 'dark')
    hi Visual cterm=NONE ctermfg=NONE ctermbg=237 guibg=#3a3a3a
  " Titles for output from :set all, :autocmd, etc. - added by me
   hi! link Title GruvboxRed
  else
    hi Visual cterm=NONE ctermfg=NONE ctermbg=228 guibg=#f2e5bc
    hi CursorLine cterm=NONE ctermfg=NONE ctermbg=228 guibg=#f2e5bc
    hi ColorColumn cterm=NONE ctermfg=NONE ctermbg=228 guibg=#f2e5bc
  endif
endif

" -----------------------------------------------------------------------------
" Status line
" -----------------------------------------------------------------------------

" Heavily inspired by: https://github.com/junegunn/dotfiles/blob/master/vimrc
function! s:statusline_expr()
  let mod = "%{&modified ? '[+] ' : !&modifiable ? '[x] ' : ''}"
  let ro  = "%{&readonly ? '[RO] ' : ''}"
  let ft  = "%{len(&filetype) ? '['.&filetype.'] ' : ''}"
  let fug = "%{exists('g:loaded_fugitive') ? fugitive#statusline() : ''}"
  let sep = ' %= '
  let pos = ' %-12(%l : %c%V%) '
  let pct = ' %P'

  return '[%n] %f %<'.mod.ro.ft.fug.sep.pos.'%*'.pct
endfunction

let &statusline = s:statusline_expr()

" -----------------------------------------------------------------------------
" Cursor line - see gvimrc for other cursor line settings
" -----------------------------------------------------------------------------

" shows/hides cursor line when switching modes
:autocmd InsertEnter,InsertLeave * set cul!

" -----------------------------------------------------------------------------
" File Types
" -----------------------------------------------------------------------------

" xml.vim ftplugin mappings - must come before the filetype plugin command
" Enables tag closing for hr, br etc in HTML
let xml_use_xhtml = 1

" -----------------------------------------------------------------------------
" Syntax highlighting and indenting
" -----------------------------------------------------------------------------

syntax enable

" Detect filetypes and run language-specific plugins in the ftplugin folder
filetype plugin indent on

" -----------------------------------------------------------------------------
" indentLine plugin mappings - not sure this is being used
" -----------------------------------------------------------------------------

let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|']

" -----------------------------------------------------------------------------
" Basic mappings
" -----------------------------------------------------------------------------

" set the mapleader - must appear before any leader mappings
let mapleader =" "
let g:mapleader =" "

" turn off search highlighting with <CR> (carriage-return)
nnoremap <CR> :nohlsearch<CR><CR>

" visually select just the text of a line without the CR and open an XML
" surround
noremap Y ^vg_

" map Esc key alternative to jk and kj for insert mode and visual mode
inoremap jk <esc>
inoremap kj <esc>
xnoremap jk <esc>
xnoremap kj <esc>

" map the ENTER key to switch back to Normal mode from Insert and Visual
" Use Caps Lock ENTER (mapped to Ctrl) to add a line return from Insert mode
" inoremap <ENTER> <esc>
" xnoremap <ENTER> <esc>

" Navigate around splits with a single key combo.
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-j> <C-w><C-j>

" Cycle through splits.
nnoremap <S-Tab> <C-w>w

" move among buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> [B :blast<CR>

" Remapping of alt-j, alt-k to move lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <esc>:m .+1<CR>==gi
inoremap <A-k> <esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" use tab to move around to bracket pairs - may interfere with insert tab mapping
nnoremap <tab> %
vnoremap <tab> %

" splits the line on a character in Normal mode when pressing s
nnoremap <leader>s i<CR><ESC>

" open _vimrc file with ,ev (leader edit vim)
"nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
map <leader>ev :tabnew $MYVIMRC<CR>

" Source Vim config file.
map <Leader>sv :source $MYVIMRC<CR>

" Prevent x and the delete key from overriding what's in the clipboard.
" These commands make the text highlighted orange when sourcing vimrc so I turned it off.
" noremap x "_x
" noremap X "_x
" noremap <Del> "_x

" Prevent selecting and pasting from overwriting what you originally copied.
xnoremap p pgvy

" Keep cursor at the bottom of the visual selection after you yank it.
vmap y ygv<Esc>

" open a new vertical split and switch over to it
nnoremap <leader>v <C-w>v<C-w>l

" Open a new empty tab
nnoremap <leader>a :tabnew<CR>

" Automatically fix the last misspelled word and jump back to where you were.
"   Taken from this talk: https://www.youtube.com/watch?v=lwD8G1P52Sk
nnoremap <leader>sp :normal! mz[s1z=`z<CR>

" Toggle visually showing whitespace characters listed in listchars
nnoremap <F2> :set list!<CR>
inoremap <F2> <C-o>:set list!<CR>

" -----------------------------------------------------------------------------
" Spell checking
" -----------------------------------------------------------------------------

" Toggle spell check.
map <F7> :setlocal spell!<CR>
inoremap <F7> <C-o>:setlocal spell!<CR>

" Spelling mistakes will also be colored red if you uncomment the colors.
hi SpellBad cterm=underline ctermfg=203 guifg=cyan1
hi SpellLocal cterm=underline ctermfg=203 guifg=LightCoral
hi SpellRare cterm=underline ctermfg=203 guifg=LemonChiffon
hi SpellCap cterm=underline ctermfg=203 guifg=LimeGreen

" Use F8 to toggle relative line numbers and regular line numbers.
nnoremap <F8> :set relativenumber!<CR>
inoremap <F8> <C-o>:set relativenumber!<CR>

" Use F3 to remove trailing whitespace without removing empty lines
:nnoremap <silent> <F3> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" -----------------------------------------------------------------------------
" Basic autocommands
" -----------------------------------------------------------------------------

" Update a buffer's contents on focus if it changed outside of Vim.
au FocusGained,BufEnter * :checktime

" Unset paste on InsertLeave.
autocmd InsertLeave * silent! set nopaste

" Only show the cursor line in the active buffer.
augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

" Mappings to make Vim more friendly towards presenting slides.
autocmd BufNewFile,BufRead *.vpm call SetVimPresentationMode()
function SetVimPresentationMode()
  nnoremap <buffer> <Right> :n<CR>
  nnoremap <buffer> <Left> :N<CR>

  if !exists('#goyo')
    Goyo
  endif
endfunction

" -----------------------------------------------------------------------------
" Airline settings
" -----------------------------------------------------------------------------
"
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:airline_detect_modified=1
let g:airline#extensions#capslock#symbol = 'CAPS'

" -----------------------------------------------------------------------------
" Insert date and time
" -----------------------------------------------------------------------------

" Insert date and time in normal and insert modes:
:nnoremap <F6> "=strftime("%Y-%m-%d %H:%M")<CR>P
:inoremap <F6> <C-R>=strftime("%Y-%m-%d %H:%M")<CR>

" Insert date in normal and insert modes:
:nnoremap <F5> "=strftime("%Y-%m-%d")<CR>P
:inoremap <F5> <C-R>=strftime("%Y-%m-%d")<CR>

" -----------------------------------------------------------------------------
" Copy file paths
" -----------------------------------------------------------------------------

" Copy the current buffer's path from present working directory onwards to the unnamed register so you can paste with p
:nmap cp :let @" = expand("%")<CR>

" Copy the current complete buffer's path to the unnamed register so you can paste with p
:nmap cP :let @" = expand("%:p")<CR>

" Toggle split window zoom

nnoremap <silent> <F10> <c-w>\|
nnoremap <silent> <F11> <c-w>=

" -----------------------------------------------------------------------------
" Pretty print formatting
" -----------------------------------------------------------------------------

" pretty print for use with HTML Tidy
command! TidyHTML !tidy -mi -html -wrap 0 %
"command! XMLlint %!xmllint % --format
" Validate against DITA DTDs when XML file is inside the dtd folder that contains the dtd for the topic type, and the directory is set to the working directory, and the entire higher level set of dtds is present
command! DITAvalidlocal %!xmllint % --valid --noout
" command! DITAvalid !xmllint % --valid  C:\Users\mark.beresford\Documents\myfiles\projects-writing\dtd\technicalContent\dtd\concept.dtd --noout
" Validate against DTDs using catalog file - not sure if this works need to test
command! DITAvalidlocal %!xmllint % --valid --catalogs --noout command! TidyXML !tidy -mi -xml -wrap 0 %

" -----------------------------------------------------------------------------
" Plugin settings, mappings and autocommands
" -----------------------------------------------------------------------------

" ............................................................................. .............................................................................
" vim-correction
" .............................................................................

" Turn it off
" let g:loaded_correction = 1

let g:correction_filetypes = [
  \ 'text', 'markdown', 'gitcommit', 'xml', 'html',
  \ 'asciidoc', 'adoc', 'pandoc' ]

" ............................................................................. .............................................................................
" FZF plugin mappings
" .............................................................................

"let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

" Customize fzf colors to match your color scheme.
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-b': 'split',
  \ 'ctrl-v': 'vsplit',
  \ 'ctrl-y': {lines -> setreg('*', join(lines, "\n"))}}

" Mappings for fzf for finding buffers, files, and tags
nmap <Leader>b :Buffers<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>t :Tags<CR>

" If installed using git
Plug '~/.fzf'

" .............................................................................
" Prettier
" .............................................................................

" Prettier autoformat on save
let g:prettier#autoformat_require_pragma = 0

" .............................................................................
" incsearch plugin settings
" .............................................................................

" hide highlights after moving the cursor following a search - works with hlsearch setting set above
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" .............................................................................
" unblevable/quick-scope
" .............................................................................

" Trigger a highlight in the appropriate direction when pressing these keys.
let g:qs_highlight_on_keys=['f', 'F', 't', 'T']

augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#af005f' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#0087ff' gui=underline ctermfg=81 cterm=underline
augroup END

" Only underline the highlights instead of using custom colors.
highlight QuickScopePrimary gui=underline cterm=underline
highlight QuickScopeSecondary gui=underline cterm=underline

" .............................................................................
" vim-sneak
" .............................................................................

" puts codes onto repeat matches so you can type one more letter to get
" where you want to go
let g:sneak#label = 1
map <leader>q <Plug>Sneak_s
" map <leader>Q <Plug>Sneak_S

" .............................................................................
" AutoComplPop settings - https://github.com/othree/vim-autocomplpop/blob/master/doc/acp.txt
" .............................................................................

let g:acp_enableAtStartup = 1
let g:acp_completeOption = '.,w,b,u'
let g:acp_behaviorFileLength = 3
let g:acp_behaviorXmlOmniLength = 3

" .............................................................................
" mhinz/vim-grepper
" .............................................................................

let g:grepper={}
let g:grepper.tools=["rg"]

xmap gr <plug>(GrepperOperator)

" After searching for text, press this mapping to do a project wide find and
" replace. It's similar to <leader>r except this one applies to all matches
" across all files instead of just the current file.
nnoremap <Leader>R
  \ :let @s='\<'.expand('<cword>').'\>'<CR>
  \ :Grepper -cword -noprompt<CR>
  \ :cfdo %s/<C-r>s//g \| update
  \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" The same as above except it works with a visual selection.
xmap <Leader>R
    \ "sy
    \ gvgr
    \ :cfdo %s/<C-r>s//g \| update
     \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" .............................................................................
" ntpeters/vim-better-whitespace
" .............................................................................

" let g:strip_whitespace_confirm=0
" let g:strip_whitelines_at_eof=1
" let g:strip_whitespace_on_save=1

" .............................................................................
" Konfekt/FastFold
" .............................................................................

let g:fastfold_savehook=0
let g:fastfold_fold_command_suffixes=[]
" let g:markdown_syntax_folding = 1
let g:asciidoctor_syntax_folding = 1
" let g:html_syntax_folding = 1

" .............................................................................
" habamax/asciidoctor plugin settings
" .............................................................................

" Fold sections: must be set to 1 for automatic folding when you open a file
let g:asciidoctor_folding = 1

" Fold options, default `0`.
let g:asciidoctor_fold_options = 2

" What to use for HTML, default `asciidoctor`.
let g:asciidoctor_executable = 'asciidoctor'

" What extensions to use for HTML, default `[]`.
let g:asciidoctor_extensions = ['asciidoctor-diagram', 'asciidoctor-rouge']

" What to use for PDF, default `asciidoctor-pdf`.
let g:asciidoctor_pdf_executable = 'asciidoctor-pdf'

" What extensions to use for PDF, default `[]`.
let g:asciidoctor_pdf_extensions = ['asciidoctor-diagram']

" Path to PDF themes, default `''`.
let g:asciidoctor_pdf_themes_path = '~/docs/AsciiDocThemes'

" Path to PDF fonts, default `''`.
let g:asciidoctor_pdf_fonts_path = '~/docs/AsciiDocThemes/fonts'

" Path to the custom css - turned off so I can specify as a file attribute
" let g:asciidoctor_css_path = 'C:\Users\echo\Documents\notes\css'

" Custom css name to use instead of built-in - turned off so I can specify as a file attribute
" let g:asciidoctor_css = 'asciidoctor.css'

" Conceal *bold*, _italic_, `code` and urls in lists and paragraphs, default `0`.
" See limitations in end of the README
let g:asciidoctor_syntax_conceal = 0

" Highlight indented text, default `1`.
let g:asciidoctor_syntax_indented = 1

" Function to create buffer local mappings and add default compiler
fun! AsciidoctorMappings()
    nnoremap <buffer> <leader>oo :AsciidoctorOpenRAW<CR>
    nnoremap <buffer> <leader>op :AsciidoctorOpenPDF<CR>
    nnoremap <buffer> <leader>oh :AsciidoctorOpenHTML<CR>
    nnoremap <buffer> <leader>ox :AsciidoctorOpenDOCX<CR>
    nnoremap <buffer> <leader>ch :Asciidoctor2HTML<CR>
    nnoremap <buffer> <leader>cp :Asciidoctor2PDF<CR>
    nnoremap <buffer> <leader>cx :Asciidoctor2DOCX<CR>
    nnoremap <buffer> <leader>p :AsciidoctorPasteImage<CR>
    " :make will build pdfs
    compiler asciidoctor2pdf
endfun

" Call AsciidoctorMappings for all `*.adoc` and `*.asciidoc` files
augroup asciidoctor
    au!
    au BufEnter *.adoc,*.asciidoc call AsciidoctorMappings()
augroup END

" .............................................................................
" ALE plugin settings
" .............................................................................

let g:ale_html_tidy_executable = "C:\Program Files\tidy-5.6.0-vc14-64b\bin\tidy.exe"
" Maybe need to turn off tidy here and in the html linters section below if it reports an error.

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'html': ['tidy', 'prettier'],
\   'css': ['stylelint', 'prettier'],
\   'xml': ['xmllint'],
\}

let g:ale_fix_on_save = 0       " Use 1 to activate - run :ALEFix instead if you want to manually fix a file
let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = 'never'   " Only activate on save
let g:ale_lint_on_enter = 0    " start when GVim starts = 1. to turn it off use 0
let g:ale_sign_column_always = 1 " 1 keeps the sign column open at all times

let g:ale_linters = {
 \   'css': ['stylelint', 'prettier'],
 \   'scss': ['stylelint'],
 \   'html': ['tidy', 'prettier'],
 \   'javascript': ['eslint'],
 \   'xml': ['xmllint'],
 \}

" let g:CSSLint_FileTypeList = ['css', 'less', 'sass'] " Activates csslint for use in Vim with css files - using stylelint
let g:ale_set_highlights = 0  " 1 allows highlights for text symbols in the column, 0 disables
" highlight ALEWarning ctermbg=DarkMagenta

let g:ale_sign_error = 'x'
" let g:ale_sign_warning = '!'
" let g:ale_sign_error = '⚠️' "Less aggressive than the default '>>'
" let g:ale_sign_error = '▲'
let g:ale_sign_warning = '💡'
"let g:ale_echo_msg_warning_str = 'Warning 📣'
"let g:ale_echo_msg_error_str = '❧ Error'
" highlight clear ALEErrorSign
" highlight clear ALEWarningSign
let g:ale_open_list = 1  "  can be useful if combining ALE with another plugin
let g:ale_keep_list_window_open = 1

" Bind F12 to fixing problems with ALE
nmap <F12> <Plug>(ale_fix)

" .............................................................................
" lambdalisue/fern.vim plugin settings
" .............................................................................

" Disable netrw
let g:loaded_netrw  = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1

augroup my-fern-hijack
  autocmd!
  autocmd BufEnter * ++nested call s:hijack_directory()
augroup END

function! s:hijack_directory() abort
  let path = expand('%:p')
  if !isdirectory(path)
    return
  endif
  bwipeout %
  execute printf('Fern %s', fnameescape(path))
endfunction

" Custom settings and mappings.
let g:fern#disable_default_mappings = 1

noremap <silent> <Leader>n :Fern %:h -reveal=% -drawer -toggle -width=45<CR><C-w>l

function! FernInit() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-open-expand-collapse)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open:select)",
        \   "\<Plug>(fern-action-expand)",
        \   "\<Plug>(fern-action-collapse)",
        \ )
  nmap <buffer> <CR> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> <2-LeftMouse> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> n <Plug>(fern-action-new-path)
  nmap <buffer> d <Plug>(fern-action-remove)
  nmap <buffer> m <Plug>(fern-action-move)
  nmap <buffer> M <Plug>(fern-action-rename)
  nmap <buffer> h <Plug>(fern-action-hidden-toggle)
  nmap <buffer> r <Plug>(fern-action-reload)
  nmap <buffer> s <Plug>(fern-action-mark-toggle)
  nmap <buffer> b <Plug>(fern-action-open:split)
  nmap <buffer> v <Plug>(fern-action-open:vsplit)
  nmap <buffer><nowait> < <Plug>(fern-action-leave)
  nmap <buffer><nowait> > <Plug>(fern-action-enter)
endfunction

augroup FernGroup
  autocmd!
  autocmd FileType fern call FernInit()
augroup END

" -----------------------------------------------------------------------------
" romainl/vim-qf settings
" -----------------------------------------------------------------------------

let g:qf_max_height = 25

" -----------------------------------------------------------------------------
" bfrg/vim-qf-preview settings - sets p as the preview keymapping
" -----------------------------------------------------------------------------

augroup qfpreview
    autocmd!
    autocmd FileType qf nmap <buffer> p <plug>(qf-preview-open)
augroup END

" -----------------------------------------------------------------------------
" Yggdroot/indentLine settings
" -----------------------------------------------------------------------------

" let g:indentLine_char = '|'
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 1

" -----------------------------------------------------------------------------
" Quickfix list - removing as same as tpope/unimpaired
" -----------------------------------------------------------------------------

" Navigate quickfix list with ease
" nnoremap <silent> [q :cprevious<CR>
" nnoremap <silent> ]q :cnext<CR>

" -----------------------------------------------------------------------------
" Autocomplete
" -----------------------------------------------------------------------------

" autocloses html and xml tags used along with the xml.vim file
inoremap ><Tab> ><Esc>F<lyt>o</<C-r>"><Esc>O<Space> 

" -----------------------------------------------------------------------------
" XML
" -----------------------------------------------------------------------------

map <Leader>x :set filetype=xml<CR>
  \:source $VIMRUNTIME/syntax/xml.vim<CR>
  \:set foldmethod=syntax<CR>
  \:source $VIMRUNTIME/syntax/syntax.vim<CR>
  \:source $ADDED/xml.vim<CR>
  \:iunmap <buffer> <Leader>.<CR>
  \:iunmap <buffer> <Leader>><CR>
  \:inoremap \> ><CR>
  \:echo "XML mode is on"<CR>
  " no imaps for <Leader>
  "\:inoremap \. ><CR>

command! XMLlint %!xmllint % --format
command! DITAvalid %!xmllint % --valid --noout
command! DITAvalidcat %!xmllint % --valid --catalogs --noout " This is not currently working

" catalog should be set up
nmap <Leader>l <Leader>cd:%w !xmllint --valid --noout -<CR>
nmap <Leader>r <Leader>cd:%w !rxp -V -N -s -x<CR> " I don't know what this does, copied from pink juice
nmap <Leader>dvc :%w !xmllint --noout --dtdvalid "http://scitechcontentservices.com/dtd/concept.dtd"<CR>

vmap <Leader>px !xmllint --format -<CR>
nmap <Leader>px !!xmllint --format -<CR>
nmap <Leader>pxa :%!xmllint --format -<CR>

nmap <Leader>i :%!xsltlint<CR>

" -----------------------------------------------------------------------------
" Enable use of standard Windows copy and paste commands
" -----------------------------------------------------------------------------

" use ctrl-c in normal and visual modes to store in the Windows clipboard
nnoremap <C-c> "+y
vnoremap <C-c> "+y

" while in normal Vim mode, use ctrl-p to paste into Vim from the Windows clipboard
map <C-p> "+p

" use ctrl-x in normal and visual modes of Vim to cut and store in the Windows clipboard
map <C-x> "+x

" swap adjacent letters instead of the default xp which cannot be repeated
" with the dot command and one other mapping turns off this feature
nnoremap <silent> <leader>c xph

" swap word under cursor with the next word without moving the cursor
" nnoremap gw "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><C-o><C-l>
nnoremap <leader>w daw wP

" push word under cursor to the left
nnoremap <leader><Left> "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><C-o><C-l>

" push word under cursor to the right
nnoremap <leader><Right> "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><C-o>/\w\+\_W\+<CR><C-l>

" -----------------------------------------------------------------------------
" Define what a word is so a GUID will be a word
" -----------------------------------------------------------------------------

set iskeyword+=\-  " a word includes hyphens to include filenames and GUIDs
set iskeyword+=\.  " a word includes periods to include filename extensions such as .xml

" -----------------------------------------------------------------------------
" Create text object for a line, v-select with vil -  https://vi.stackexchange.com/questions/24861/selector-for-line-of-text
" -----------------------------------------------------------------------------

function! SelectLine(count) abort
  normal! gv
  if visualmode() !=# 'v'
    normal! v
  endif
  let startpos = getpos("'<")
  let endpos = getpos("'>")
  if startpos == endpos
    execute "normal! ^o".a:count."g_"
    return
  endif
  let curpos = getpos('.')
  if curpos == endpos
    normal! g_
    let curpos = getpos('.')
    if curpos == endpos
      execute "normal!" (a:count+1)."g_"
    elseif a:count > 1
      execute "normal!" a:count."g_"
    endif
  else
    normal! ^
    let curpos = getpos('.')
    if curpos == startpos
      execute "normal!" a:count."-"
    elseif a:count > 1
      execute "normal!" (a:count-1)."-"
    endif
  endif
endfunction
xnoremap <silent> il :<C-U>call SelectLine(v:count1)<CR>
onoremap <silent> il :<C-U>execute "normal! ^v".v:count1."g_"<CR>


" -----------------------------------------------------------------------------
" Set current directory on the fly
" -----------------------------------------------------------------------------

" This setting must be at toward the bottom for it to work.
" It maps cd to change the working directory to the directory of active file
" nnoremap <leader>cd :cd %:p:h<CR>
nnoremap <leader>cd :lcd %:h<CR>

" F4 following a :g/pattern result puts the result into a new window
nnoremap <silent> <F4> :redir @a<CR>:g//<CR>:redir END<CR>:new<CR>:put! a<CR>

" DITA snippets - replace with template files you read in
noremap <leader>dt a<?xml version="1.0" encoding="utf-8"?><CR><!DOCTYPE task PUBLIC "-//OASIS//DTD DITA Task//EN" "task.dtd"><CR><task id="task-1"><CR><taskbody><CR><title>Title</title><CR></taskbody><CR></task><ESC>
noremap <leader>dnt a<?xml version="1.0" encoding="utf-8"?><CR><!DOCTYPE task PUBLIC "-//OASIS//DTD DITA Task//EN" "task.dtd"><CR><task id="task-1"><CR><taskbody><CR><title>Title</title><CR></taskbody><CR><task id="task-2"><CR><taskbody><CR><title>Title</title><CR></taskbody><CR></task><CR></task><ESC>
noremap <leader>dc a<?xml version="1.0" encoding="utf-8"?><CR><!DOCTYPE concept PUBLIC "-//OASIS//DTD DITA Concept//EN" "concept.dtd"><CR><concept id="concept-1"><CR><conbody><CR><title>Title</title><CR></conbody><CR></concept><ESC>
noremap <leader>dnc a<?xml version="1.0" encoding="utf-8"?><CR><!DOCTYPE concept PUBLIC "-//OASIS//DTD DITA Concept//EN" "concept.dtd"><CR><concept id="concept-1"><CR><conbody><CR><title>Title</title><CR></conbody><CR><concept id="concept-2"><CR><conbody><CR><title>Title</title><CR></conbody><CR></concept><CR></concept><ESC>

" HTML snippets
noremap <leader>ht a<!DOCTYPE html><CR><html><CR><head><CR><title>Title</title><CR><link rel="stylesheet" href="style.css"><CR></head><CR><body><CR><h1>Heading1</h1><CR></body><CR></html><ESC>

" -----------------------------------------------------------------------------
" GVim-specific settings
" -----------------------------------------------------------------------------

if has("gui_running")

" set guioptions-=T " Removes top toolbar
set guioptions=rb " sets the right and bottom scrollbars and hides the menubar due to a missimg m
set guitablabel=%N\ %t\ %M  " Sets the syntax of the tab label to a tab number and the filename of the current window.

highlight CursorLineNr gui=bold guifg=#ffffff guibg=#c0d0e0

" Normal mode cursor - may be overridden by colorscheme
highlight nCursor guifg=white guibg=steelblue

" Insert mode cursor - may be overridden by colorscheme
highlight iCursor guifg=white guibg=green

" sets text color of folds, otherwise set by the colorscheme
highlight Folded guifg=goldenrod2

" sets the Normal, Visual, Command mode cursors to block
set guicursor=n-v-c:block-Cursor-blinkon0

" sets the Insert mode cursor to an I bar
set guicursor=i:ver30-iCursor-blinkwait3000

" sets the Insert mode cursor to block
" set guicursor=i:block-Cursor

set sidescroll=1 " scrolls the window left/right to see text outside the window

set guifont=Roboto_Mono:h14:W300

" Add keyboard shortcuts
imap <Tab> <C-N>
imap <leader><Tab> <C-X><C-F>

endif

" -----------------------------------------------------------------------------
" Computer-specific settings
" :echo $COMPUTERNAME to find
" -----------------------------------------------------------------------------

if $COMPUTERNAME == "P53"

set undodir=$HOME\Documents\repos\vim-config\undo     " Saves undo steps to a file so you can redo even after exiting Vim
set spellfile=$HOME\Documents\repos\vim-config\en.utf-8.add

winpos 1800 400
winsize 200 50

cd $HOME\Documents\repos

" Set the location of vim-calendar cache to the shared repo - not working
" let g:calendar_cache_directory = C:\Users\echo\Documents\repos\vim-config\calendar.vim

elseif $COMPUTERNAME == "CEPSNYLPENG1491"

cd C:\Users\mark.beresford\Documents

set undodir=C:\Users\mark.beresford\Documents\vim-config\undo     " Saves undo steps to a file so you can redo even after exiting Vim
set spellfile=C:\Users\mark.beresford\Documents\vim-config\en.utf-8.add

winpos 1200 400
winsize 100 30

endif
