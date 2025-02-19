set nocompatible
filetype off

let g:python3_host_prog = expand(system('pyenv which python'))

set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'flazz/vim-colorschemes'
Plugin 'junegunn/fzf.vim'
Plugin 'preservim/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'leafOfTree/vim-svelte-theme'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'evanleck/vim-svelte', {'branch': 'main'}

call vundle#end()


function! Lint()
	echo 'Linting ' . expand('%')
	let res = system('./node_modules/eslint/bin/eslint.js ' . expand('%'))
	echo res
endfunction

set listchars=trail:~,tab:\|-
set list

syntax on
set hlsearch
set nowrap
set tabstop=2
set shiftwidth=2
set smarttab
set nu
set splitright
set ruler
set tags=tags
set autoindent
set relativenumber

nmap <Space> <Leader>
nmap <Leader><Space> ;noh<Enter>

nmap <S-h> <C-W>h
nmap <S-l> <C-W>l
nmap <S-k> <C-W>k
nmap <S-j> <C-W>j
nmap <C-j> <C-e>
nmap <C-k> <C-y>
nmap <C-d> <C-W><C-]>


nmap <C-n> ;NERDTree<Enter>
nmap <C-l> ;call Lint()<Enter>

nnoremap ; :
nnoremap : ;

vmap <C-c> "*y

set backspace=indent,eol,start

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

autocmd StdinReadPre * let s:std_in=1

set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:NERDTreeChDirMode = 2
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_custom_ignore = { 'dir':  '\v[\/](node_modules|reports|dist|docs|src/libraries)$' }
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

color asu1dark

let g:python_recommended_style = 0
set noexpandtab

