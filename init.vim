call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-pathogen'
Plug 'ludovicchabant/vim-gutentags'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-vinegar'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-jsx plugin'
Plug 'pangloss/vim-javascript'

call plug#end()

set backspace=indent,eol,start					"Make backspace behave like it should
let mapleader = ","						"Set mapleader to comma
set number 							"Set line numbers

"------------ Search ------------"
set hlsearch							"Highlight search
set incsearch							"Search increment

"------------ Split Management ------------"
set splitbelow							"Default new splits to below
set splitright							"Default new splits to right

nmap <C-J> <C-W><C-J>		
nmap <C-K> <C-W><C-K>			
nmap <C-H> <C-W><C-H>				
nmap <C-L> <C-W><C-L>	

"------------ Mappings ------------"
nmap <Leader>ev :tabedit $MYVIMRC<cr>				"Easier to edit vim src file
nmap <Leader><space> :nohlsearch<cr>    			"Stop highlighting search
nmap <Leader> b :NERDTreeToggle<cr>				"Make nerdtree easier"
nmap <C-R> :CtrlPBufTag<cr>
nmap <C-e> :CtrlPMRUFiles<cr>
nmap <Leader>f :FZF<cr>

" Gutentags
" Don't load me if there's no ctags file
if !executable('ctags')
    let g:gutentags_dont_load = 1
endif

" Spaces & Tabs {{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs
