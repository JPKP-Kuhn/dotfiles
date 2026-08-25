set autoindent
set clipboard=unnamedplus
set et
set incsearch
set number
set relativenumber
set shiftwidth=4
set showcmd
set smarttab
set softtabstop=4
set wildmenu
set mouse="a"

nnoremap ; :
vnoremap ; :

nnoremap J }
nnoremap K {
vnoremap J }
vnoremap K {

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l


" Ativa a detecção, indentação e plugins de arquivo
filetype plugin indent on

" Ativa o realce de sintaxe
syntax on

" Destaca a linha onde o cursor está posicionado
set cursorline

" Usa espaços no lugar de tabs
set expandtab

set smartindent

" Melhora a busca: destaca termos e busca enquanto você digita
set hlsearch
set ignorecase
set smartcase

" Mostra comandos incompletos e a posição do cursor na barra inferior
set showcmd
set ruler

" Permite mudar de buffer sem salvar o arquivo atual (oculta o buffer)
set hidden

" Melhora o preenchimento automático de comandos na barra de status
set wildmenu

" Define a codificação padrão do texto
set encoding=utf-8
