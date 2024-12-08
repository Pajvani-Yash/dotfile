" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1
set nocompatible
" :NERDTree
packloadall
" let g:vim_jsx_pretty_colorful_config = 1 " default 0
filetype plugin on
filetype indent on
filetype plugin indent on
set shiftwidth=2
" set mouse=a
syntax on
" set t_Co=256
" set t_ut=
:colorscheme codedark
" Use deoplete.:
"
" let g:deoplete#enable_at_startup = 1
" :set omnifunc=htmlcomplete#CompleteTags
" nnoremap <C-S-Tab> :tabprevious<CR>
" nnoremap <C-Tab>   :tabnext<CR>
" nnoremap <C-t>     :tabnew<CR>
" map <C-Left>
" map <C-Right>
" map <C-t>     :tabnew<CR>
" inoremap <C-Left> <Esc>:tabprevious<CR>i
" inoremap <C-Right>   <Esc>:tabnext<CR>i
" inoremap <C-t>     <Esc>:tabnew<CR>
" inoremap <C-S-w>   <Esc>:tabclose<CR>
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<C-b>"
" let g:UltiSnipsJumpBackwardTrigger="<C-z>"
" let g:UltiSnipsListSnippets="<C-m>"
" let g:UltiSnipsSnippetsDir="/home/jff/.vim/pack/plugins/start/vim-react-snippets/UltiSnips"
" let g:UltiSnipsEditSplit="vertical"
" Common Go commands
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage-toggle)
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
let g:go_doc_popup_window = 1
" Enable lsp for go by using gopls
let g:completor_filetype_map = {}
let g:completor_filetype_map.go = {'ft': 'lsp', 'cmd': 'gopls -remote=auto'}"
