" Basics
set hidden lazyredraw showmode novisualbell number ttyfast

" Whitespace configuration
set nowrap tabstop=2 shiftwidth=2 softtabstop=2 expandtab smartindent nofixendofline

" Menu stuff
set wildmode=list:full
set wildignore+=*.d.ts,*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*
set wildignore+=deploy/**,dist/**,release/**,*.min.js,*.js.map

" Search
set hlsearch incsearch ignorecase smartcase

" better colors
set termguicolors

" Use modeline overrides
set modeline modelines=10

set mouse=a

" Undo and backup
set undofile
set nobackup
set nowritebackup
set undodir=~/.config/nvim/undo
set backupdir=~/.config/nvim/backup
set directory=~/.config/nvim/swp


set clipboard=unnamedplus

set diffopt=vertical,iwhiteall

""""""""""""""""""""""""""""""""""""""
" general mappings
""""""""""""""""""""""""""""""""""""""
let mapleader=" "

imap jk <Esc>

nnoremap <F9> :bw<CR>
nnoremap <F10> :NERDTreeToggle <bar> bw <bar> NERDTreeToggle<CR> <C-W>l

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <leader>d :bp<cr>:bd #<cr>
nnoremap <Leader>h :nohlsearch<CR>
nnoremap <Leader>s :setlocal spell! spell?<CR>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>ev :e $MYVIMRC<cr>
nnoremap <Leader>sv :so $MYVIMRC<cr>

""""""""""""""""""""""""""""""""""""""
" set theme
""""""""""""""""""""""""""""""""""""""
let g:gruvbox_italic = 0
let g:gruvbox_contrast_light = 'soft'
set background=dark
colorscheme gruvbox

""""""""""""""""""""""""""""""""""""""
" Plug Start
""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

""""""""""""""""""""""""""""""""""""""
" general
""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-ragtag'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-commentary'

""""""""""""""""""""""""""""""""""""""
" yaml
""""""""""""""""""""""""""""""""""""""
Plug 'stephpy/vim-yaml'
Plug 'xavierchow/vim-swagger-preview'
nmap <unique> <leader>v <Plug>GenerateDiagram

""""""""""""""""""""""""""""""""""""""
" TypeScript / tsx
""""""""""""""""""""""""""""""""""""""
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

""""""""""""""""""""""""""""""""""""""
" JavaScript / tsx
""""""""""""""""""""""""""""""""""""""
Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'

""""""""""""""""""""""""""""""""""""""
" Git
""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'int3/vim-extradite'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'

""""""""""""""""""""""""""""""""""""""
" Ack
""""""""""""""""""""""""""""""""""""""
Plug 'mileszs/ack.vim'
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

""""""""""""""""""""""""""""""""""""""
" FZF
""""""""""""""""""""""""""""""""""""""
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
nnoremap <C-p> :FZF<CR>
nnoremap <leader>b :Buffers<CR>

""""""""""""""""""""""""""""""""""""""
" Airline
""""""""""""""""""""""""""""""""""""""
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
noremap <leader>n :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=45
let NERDTreeIgnore=['\.git$[[dir]]']
let NERDTreeDirArrowExpandable = "\u00a0"
let NERDTreeDirArrowCollapsible = "\u00a0"

Plug 'ryanoasis/vim-devicons'
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsOS = 'Darwin'
let g:NERDTreeGitStatusNodeColorization = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

" 
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsOS = 'Darwin'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['tsx'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sql'] = ''

""""""""""""""""""""""""""""""""""""""
" Misc
""""""""""""""""""""""""""""""""""""""
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'

Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'

Plug 'junegunn/limelight.vim'

Plug 'elzr/vim-json'

Plug 'crusoexia/vim-monokai'
Plug 'morhetz/gruvbox'

Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'dominikduda/vim_es7_javascript_react_snippets'

Plug 'easymotion/vim-easymotion'

Plug 'editorconfig/editorconfig-vim'

""""""""""""""""""""""""""""""""""""""
" Plug End
""""""""""""""""""""""""""""""""""""""
call plug#end()


""""""""""""""""""""""""""""""""""""""
" Coc Config
""""""""""""""""""""""""""""""""""""""

let g:coc_global_extensions = [ 'coc-snippets', 'coc-json', 'coc-tsserver', 'coc-tslint-plugin', 'coc-css', 'coc-stylelint', 'coc-prettier' ]

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p> : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> td <Plug>(coc-definition)
nmap <silent> ty <Plug>(coc-type-definition)
nmap <silent> ti <Plug>(coc-implementation)
nmap <silent> tr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>"
