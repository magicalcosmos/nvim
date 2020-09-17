" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    "
    " vim-floaterm
    Plug 'voldikss/vim-floaterm'

    " General Highlighter
    Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
    Plug 'RRethy/vim-illuminate'

   " File navigation
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
    Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
    Plug 'kevinhwang91/rnvimr'
    Plug 'airblade/vim-rooter'
    Plug 'pechorin/any-jump.vim'

    " Theme
    Plug 'morhetz/gruvbox'
    Plug 'dracula/vim', { 'as': 'dracula' }

    " Taglist
    Plug 'liuchengxu/vista.vim'

    " Interactive code
    Plug 'metakirby5/codi.vim'

    " Lean & mean status/tabline for vim that's light as air.
    Plug 'vim-airline/vim-airline'

    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'wellle/tmux-complete.vim'

    " Undo Tree
    Plug 'mbbill/undotree'

    " CSharp
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'ctrlpvim/ctrlp.vim' , { 'for': ['cs', 'vim-plug'] } " omnisharp-vim dependency

    " HTML, CSS, JavaScript, Typescript, PHP, JSON, etc.
    Plug 'elzr/vim-json'
    Plug 'othree/html5.vim'
    Plug 'alvan/vim-closetag'
    Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
    Plug 'HerringtonDarkholme/yats.vim'

    Plug 'tpope/vim-capslock'	" Ctrl+L (insert) to toggle capslock
    " Find & Replace
    Plug 'brooth/far.vim', { 'on': ['F', 'Far', 'Fardo'] }
    Plug 'tpope/vim-commentary'
    Plug 'mhinz/vim-startify'

    " Git
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'

    " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'

call plug#end()


" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
