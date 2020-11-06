" Mode letters
" n: normal only
" v: visual and select
" o: operator-pending
" x: visual only
" s: select only
" i: insert
" c: command-line
" l: insert, command-line, regexp-search (and others. Collectively called 'Lang-Arg' pseudo-mode)

" *************************************************************
" * Leader mappings *******************************************
" *************************************************************

let mapleader = " "

" *************************************************************
" * Plugin-specific mappings **********************************
" *************************************************************

" fzf.vim -----------------------------------------------------
" Open fuzzy find window
nnoremap <silent> <C-p> :Files<CR>
" Open file history
nnoremap <silent> <C-h> :History<CR>
" Show open windows
nnoremap <silent> <C-t> :Windows<CR>
" Show buffers
nnoremap <silent> <C-b> :Buffers<CR>
" Open ripgrep window
nnoremap <C-f> :Rg /

" Fugitive maps -----------------------------------------------
nnoremap <Leader>gg :tab G<CR>
nnoremap <Leader>gd :tab Gdiffsplit<CR>
nnoremap <Leader>gb :GBrowse<CR>
nnoremap <Leader>gl :G blame<CR>

" COC ---------------------------------------------------------
nmap <silent> gdd :call CocAction('jumpDefinition', 'drop')<CR>
nmap <silent> gdt :call CocAction('jumpDefinition', 'tabe')<CR>
nmap <silent> gdv :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <silent> gy  <Plug>(coc-type-definition)
nmap <silent> gi  <Plug>(coc-implementation)
nmap <silent> gr  <Plug>(coc-references)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)<CR>
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)<CR>
" Apply eslint execute autofix
nmap <leader>af  :CocCommand eslint.executeAutofix<CR>

" Use tab for trigger completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <C-Space> to trigger completion.
" inoremap <silent><expr> <C-Space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use M to show documentation in preview window.
nnoremap <silent> M :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'vert h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" CR selects the first visible completion item
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Prettier formatting
vmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f :CocCommand prettier.formatFile<CR>

nmap <silent> <leader>v :CocCommand explorer<CR>

" coc snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
" xmap <leader>x  <Plug>(coc-convert-snippet)

" Easyalign maps ----------------------------------------------
" Start interactive EasyAlign in visual mode
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object
nmap ga <Plug>(EasyAlign)

" *************************************************************
" * Custom mappings *******************************************
" *************************************************************

nnoremap ; :

nnoremap <C-J> 5j
xnoremap <C-J> 5j
nnoremap <C-K> 5k
xnoremap <C-K> 5k

" insert line above and below
nnoremap <leader>o o<ESC>
nnoremap <leader>O O<ESC>

" toggle hilight search
nnoremap <silent><expr> <Leader>/ (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" select primary register
xnoremap <leader>r "+

" align window to top of screen after G
nnoremap G Gzt

nnoremap <leader>z :set nowrap!<CR>

"  void register for p 
xnoremap <leader>p "_dP
