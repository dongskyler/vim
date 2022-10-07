set runtimepath^=$HOME/.vim runtimepath+=$HOME/.vim/after
let &packpath=&runtimepath
source $HOME/.vim/.vimrc

" Temporary files
set directory=$HOME/.config/nvim/tmp/swap
set backup
set backupdir=$HOME/.config/nvim/tmp/backup
set undofile
set undodir=$HOME/.config/nvim/tmp/undo
