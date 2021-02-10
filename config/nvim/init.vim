call plug#begin()
    " Status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Easymotion navigation
    Plug 'easymotion/vim-easymotion'

    " COC: Conquer Of Completion <3
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Git integration
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'airblade/vim-gitgutter'


    " Fuzzy finding
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'stsewd/fzf-checkout.vim'

    " Syntax highlighting
    Plug 'sheerun/vim-polyglot'

    " Highlight yanked text
    Plug 'machakann/vim-highlightedyank'

    " Alignment of text, tables, etc.
    Plug 'junegunn/vim-easy-align'

    " Surround
    Plug 'tpope/vim-surround'
    "
    " Indentation
    Plug 'Yggdroot/indentLine'

    " Themes
    Plug 'sainnhe/gruvbox-material'

    " Comments
    Plug 'tpope/vim-commentary'

    " Visual star search
    Plug 'nelstrom/vim-visual-star-search'

    " Auto-close brackets
    Plug 'kitallen23/vim-autoclose'

    " Logging
    Plug 'kitallen23/vim-timber'

    " Tabs in windows
    Plug 'zefei/vim-wintabs'

call plug#end()

syntax enable
set number relativenumber       " Set line numbers to relative
set mouse=a                     " Enable mouse support
set showtabline=2               " Always show the buffer tab
set cursorline                  " Highlight the line the cursor is on
set noswapfile                  " Disable swap files
set scrolloff=5                 " Scroll the screen when cursor is x rows from the top / bottom
set signcolumn=yes              " Always show the gutter
set hidden                      " Allow vim to open files without necessarily displaying them on screen
set shortmess+=c
set updatetime=200              " Reduce update time (better usability)
set cmdheight=1                 " Increase the command prompt's height
set nowrap                      " Don't wrap when line goes off window's width

" Search
set hlsearch                    " Highlight search results
set incsearch                   " Highlight search results while typing
set ignorecase                  " Ignore case in searches
set smartcase                   " If search contains upper case, become case sensitive

" Tabs
set expandtab                   " Replace tabs with spaces
set tabstop=4                   " Set tab size
set shiftwidth=4                " Set tab size
set smarttab                    " Delete 1 tab worth of spaces at the start of a line
set autoindent                  " Copy indentation from previous line when creating a newline
set smartindent

" Split preferences
set splitright                  " Default vsplit goes to the right
set splitbelow                  " Default hsplit goes to the bottom

" ########
" ## Plugin settings #########
" ########

" Airline config
let g:airline_powerline_fonts=0
let g:airline_theme='base16'
let g:airline_section_z=''
let g:airline_section_y=''

" Fzf config
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_buffers_jump=1

" Easymotion config
let g:EasyMotion_keys='arstneiodh,qwfpgjluyzxcvbkm;'
let g:EasyMotion_smartcase=1
hi link EasyMotionTarget Search
hi link EasyMotionShade Search
hi link EasyMotionTarget2First Search
hi link EasyMotionTarget2Second Search
" hi EasyMotionTarget ctermbg=81 ctermfg=48
" hi EasyMotionTarget2First ctermbg=81 ctermfg=220
" hi EasyMotionTarget2Second ctermbg=81 ctermfg=45

" Theme config
set background=dark
let g:gruvbox_material_background='hard'
let g:gruvbox_material_enable_bold=1
let g:gruvbox_material_enable_italic=1
" let g:gruvbox_material_diagnostic_line_highlight=1
colorscheme gruvbox-material

" Highlight yank config
let g:highlightedyank_highlight_duration=250
hi HighlightedyankRegion cterm=reverse gui=reverse

" Tabline config
hi TabLine     ctermfg=244   ctermbg=234 cterm=NONE
hi TabLineFill ctermfg=Black ctermbg=234 cterm=NONE
hi TabLineSel  ctermfg=223   ctermbg=236 cterm=NONE

" Gitgutter config
let g:gitgutter_map_keys=0                    " Let fugitive do its magic
let g:gitgutter_terminal_reports_focus=0
autocmd InsertLeave * call gitgutter#process_buffer(bufnr(''), 0)
autocmd TextChanged * call gitgutter#process_buffer(bufnr(''), 0)
" hi GitGutterChange ctermfg=110

" Coc config
" node path
let g:coc_node_path = '/home/prabhat/.nvm/versions/node/v10.16.3/bin/node'
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Coc-prettier config
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" Fugitive fix for colemak layout
let g:fugitive_no_maps=1

" AutoClose [s]urround remap
let g:AutoCloseSelectionWrapPrefix="<Leader>s"

" vimspector
" let g:vimspector_enable_mappings = 'HUMAN'
" packadd! vimspector

" vim-buffer
let g:wintabs_ui_sep_inbetween=''
let g:wintabs_ui_sep_rightmost=''
let g:wintabs_ui_active_left='['
let g:wintabs_ui_active_right=']'
let g:wintabs_ui_active_higroup='TabLineSel'
let g:wintabs_display='statusline'

" indentation
let g:indentLine_char = '.'

" Remaps
:so ~/Documents/dotfiles/config/nvim/remaps.vim
