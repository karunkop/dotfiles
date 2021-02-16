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

let mapleader= " "

" *************************************************************
" * Plugin-specific mappings **********************************
" *************************************************************

" fzf.vim -----------------------------------------------------
" Open fuzzy find window
nnoremap <silent> <C-p> :Files<CR>
" Open file history
nnoremap <silent> <C-t> :History<CR>
" Show open windows
" nnoremap <silent> <C-t> :Windows<CR>
" Show buffers
" nnoremap <silent> <C-b> :Buffers<CR>
" Open ripgrep window
nnoremap <C-f> :Rg 

" Fugitive maps -----------------------------------------------
"
nnoremap <Leader>gg :tab G<CR>
nnoremap <Leader>gd :tab Gdiffsplit<CR>
nnoremap <Leader>gb :GBrowse<CR>
nnoremap <Leader>gl :G blame<CR>

" COC ---------------------------------------------------------
nmap <silent> gdd :call CocAction('jumpDefinition', 'drop')<CR>
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
nnoremap <leader>r "+

" align window to top of screen after G
nnoremap G Gzz

nnoremap <leader>z :set nowrap!<CR>

" vim windows
nnoremap <silent> <C-h> :WintabsPrev<CR>
nnoremap <silent> <C-l> :WintabsNext<CR>
nnoremap <silent> <C-q> :WintabsClose<CR>
nnoremap <silent> <Leader>wu :WintabsUndo<CR>
nnoremap <silent> <Leader>wa :WintabsAllBuffers<CR>
nnoremap <silent> <Leader>wo :WintabsOnly<CR>

" Move buffer tabs left / right
nnoremap <silent> <Leader>wm :WintabsMove 1<CR>
nnoremap <silent> <Leader>wM :WintabsMove -1<CR>

" Move buffer tabs to another window
nmap <Leader>wh <Plug>(wintabs_move_to_window_left)
nmap <Leader>wl <Plug>(wintabs_move_to_window_right)
nmap <Leader>wk <Plug>(wintabs_move_to_window_above)
nmap <Leader>wj <Plug>(wintabs_move_to_window_below)

" switching between windows
nnoremap <silent> <Leader>h :wincmd h<CR>
nnoremap <silent> <Leader>l :wincmd l<CR>
nnoremap <silent> <Leader>k :wincmd k<CR>
nnoremap <silent> <Leader>j :wincmd j<CR>

" logging with vim timber
nmap <Leader>tl <Plug>(TimberLog)
nmap <Leader>ti <Plug>(TimberLogInfo)
nmap <leader>tw <Plug>(TimberLogWarning)
nmap <leader>te <Plug>(TimberLogError)
xmap <leader>tl <Plug>(TimberLog)
xmap <leader>ti <Plug>(TimberLogInfo)
xmap <leader>tw <Plug>(TimberLogWarning)
xmap <leader>te <Plug>(TimberLogError)

" vimspector
nnoremap <leader>m :MaximizerToggle!<CR>
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>de :call vimspector#Reset()<CR>

nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

nmap <leader>dl <Plug>VimspectorStepInto
nmap <leader>dj <Plug>VimspectorStepOver
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>d_ <Plug>VimspectorRestart
nnoremap <leader>d<space> :call vimspector#Continue()<CR>

nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <leader>dibp <Plug>VimspectorToggleConditionalBreakpoint
