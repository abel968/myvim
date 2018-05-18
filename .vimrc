set nu
set ai
set encoding=utf8
"set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936
set shiftwidth=2


set nocompatible
filetype off
set rtp+=/home/jlurobot/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'   "need ctags first: sudo apt install ctags
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'python-mode/python-mode'


call vundle#end()


filetype plugin indent on 

"ycm
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_key_invoke_completion = '<F9>'
let g:ycm_confirm_extra_conf=0
"map <F8> :YcmCompleter GoToDefinition<CR>
map <F12> :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let g:ycm_global_ycm_extra_conf="~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
"let g:ycm_key_invoke_completion=''

"NERDTree
map <F2> :NERDTreeToggle<CR>

" Tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
let g:tagbar_right= 1
map <F3> :TagbarToggle<CR>

" ctrlp
let g:ctrlp_map='<F4>'
map <F5> :CtrlPMRU<CR>


" ctags setting
set tags=tags
set tags+=./tags
set tags+=/usr/local/src/tags
"set tags+=~/CXTDevelop/mrpt-1.5.5/tags
set nobackup
set nowritebackup
