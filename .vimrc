set runtimepath+=~/src/vim-polyglot
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

" adjust indent to 4
set tabstop=4 " file��Υ���ʸ����ɽ����
set shiftwidth=4 " ��ư����ǥ�Ȥ˻Ȥ���ʸ����

set number " ���ֹ��ɽ��,���߹Կ�������ɽ�� "
set relativenumber "�Կ�������ɽ��"
set whichwrap=b,s,[,],<,> " ��������β����߲�ǽ�ˤ���(�����Ǣ��򲡤��ȼ��ιԤ�
set backspace=indent,eol,start " �Хå����ڡ�������򡢹�������Ƭ�Ǥ�Ȥ���褦�ˤ���

" search
set ic " ����������ʸ��/��ʸ������̤��ʤ�

" insert mode (vim΢�ڤ�����)
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


" Start NeoBundle Settings.
if has('vim_starting')
   " ���ư���Τ�runtimepath��neobundle�Υѥ�����ꤹ��
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundle������
call neobundle#begin(expand('~/.vim/bundle/'))

" ���󥹥ȡ��뤹��ץ饰����򤳤��˵���
" NeoBundle 'violetyk/iikanji-markdown.vim'
NeoBundle 'gabrielelana/vim-markdown' " markdown�б�����indent/unindent��enable
NeoBundle 'Townk/vim-autoclose' " (��ưŪ���Ĥ���
NeoBundle 'mattn/emmet-vim' " enable Emmet

call neobundle#end()

let g:markdown_enable_spell_checking = 0 "disable spell-checking of vim-markdown"

NeoBundleCheck " ̤���󥹥ȡ���ץ饰���󤬤��ä��饤�󥹥ȡ��뤹�뤫�Ҥͤ�
" End NeoBundle Settings.

" �ե����륿�����̤Υץ饰����/����ǥ�Ȥ�ͭ���ˤ���
filetype plugin indent on

syntax enable
