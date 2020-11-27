" load syntax file if it exists in the
" current directory or parent directory
if filereadable(".vim_syntax_tex.vim")
    source .vim_syntax_tex.vim
elseif filereadable("../.vim_syntax_tex.vim")
    source ../.vim_syntax_tex.vim
endif

let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"

let g:tex_conceal_frac=1

set conceallevel=2
let g:tex_conceal="abdgm"

if !has('conceal')
  finish
endif



syn match texMathSymbol '\\vert\>' contained conceal cchar=|

syn match texMathSymbol '\\lvert\>\s*' contained conceal cchar=|
syn match texMathSymbol '\s*\\rvert\>' contained conceal cchar=|


" s:SuperSub:
fun! s:SuperSub(leader, pat, cchar)
  if a:pat =~# '^\\' || (a:leader == '\^' && a:pat =~# g:tex_superscripts) || (a:leader == '_' && a:pat =~# g:tex_subscripts)
    exe "syn match texMathSymbol '".a:leader.'\%('.a:pat.'\|{\s*'.a:pat.'\s*}\)'."' contained conceal cchar=".a:cchar
  endif
endfun


call s:SuperSub('_',',','ˏ')
call s:SuperSub('_','\\theta','₀')


" syn match subTheta '_{\\theta}' contains=The,Ta
" syn match The contained '_{\\the' conceal cchar=T
" syn match Ta contained 'ta}' conceal cchar=E
