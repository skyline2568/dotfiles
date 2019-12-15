set runtimepath+=~/src/vim-polyglot

syntax enable

filetype plugin indent on

set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac


" insert mode
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-a> <C-o>:call <SID>home()<CR>
imap <C-e> <End>
imap <C-d> <Del>
imap <C-h> <BS>
imap <C-k> <C-r>=<SID>kill()<CR>

function! s:home()
  let start_column = col('.')
  normal! ^
  if col('.') == start_column
  ¦ normal! 0
  endif
  return ''
endfunction

function! s:kill()
  let [text_before, text_after] = s:split_line()
  if len(text_after) == 0
  ¦ normal! J
  else
  ¦ call setline(line('.'), text_before)
  endif
  return ''
endfunction

function! s:split_line()
  let line_text = getline(line('.'))
  let text_after  = line_text[col('.')-1 :]
  let text_before = (col('.') > 1) ? line_text[: col('.')-2] : ''
  return [text_before, text_after]
endfunction


" NeoBundle�Ǥ������������
if has('vim_starting')
   " ���ư���Τ�runtimepath��neobundle�Υѥ�����ꤹ��
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundle������
call neobundle#begin(expand('~/.vim/bundle/'))

" ���󥹥ȡ��뤹��ץ饰����򤳤��˵���
NeoBundle 'violetyk/iikanji-markdown.vim'

call neobundle#end()

" �ե����륿�����̤Υץ饰����/����ǥ�Ȥ�ͭ���ˤ���
filetype plugin indent on
