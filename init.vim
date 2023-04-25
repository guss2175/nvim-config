" Neovim config
 syntax enable
 syntax on
 set clipboard=unnamedplus " Enables the clipboard between Vim/Neovim and other applications
 set undodir=~/.config/nvim/undodir " set undotree file directory
 set undofile " set undotree to save to file
 set number " set line number
 set nowrap " set no soft wrap
 set tabstop=2 softtabstop=2 " set tab size
 set shiftwidth=2 " affect amount of indentation
 set expandtab " set that tab will insert softabstop amount of space characters
 set nowritebackup
 set noswapfile
 set nobackup
 set breakindent
 set smartindent
 set smartcase
 set incsearch
 set hidden
 set updatetime=250
 set shortmess+=c
 set noshowmode

" open new split panes to right and below
set splitbelow
set splitright

call plug#begin('~/.config/nvim/plugged')
 " Installed plugins
 Plug 'EdenEast/nightfox.nvim'
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 Plug 'junegunn/fzf.vim'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'w0rp/ale'
 Plug 'itchyny/lightline.vim'
 Plug 'tpope/vim-surround'
 Plug 'airblade/vim-gitgutter'
 Plug 'sheerun/vim-polyglot'
 Plug 'tpope/vim-fugitive'
 Plug 'mhinz/vim-startify'
 Plug 'mbbill/undotree'
 Plug 'preservim/nerdcommenter'
 Plug 'preservim/nerdtree'
 Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
 Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'ryanoasis/vim-devicons'
 call plug#end()

" Automatic resizing of splits to equal sizes
autocmd VimResized * wincmd =

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
