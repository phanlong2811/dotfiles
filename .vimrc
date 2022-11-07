# add to .ideavimrc : source ~/.vimrc
# only mapping

inoremap jk <Esc>

nnoremap H h
nnoremap L l
nnoremap l w
nnoremap h b

vnoremap H h
vnoremap L l
vnoremap l w
vnoremap h b
nnoremap <esc> <cmd> noh <cr>
nnoremap <c-s> <cmd> w <cr>

xmap p p:let @+=@0<CR>:let @"=@0<CR>
set guicursor="a:block"

