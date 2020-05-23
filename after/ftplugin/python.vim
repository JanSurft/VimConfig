setlocal smarttab
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
" setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix

let b:ale_linters = {'python': ['mypy', 'flake8', 'pylint']}
let b:ale_fixers = ['add_blank_lines_for_python_control_statements', 'autopep8',
			\ 'black', 'isort', 'reorder-python-imports', 'yapf', 'remove_trailing_lines',
			\ 'trim_whitespace']
let g:ale_warn_about_trailing_whitespace = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'always'

let g:ale_python_pylint_options = "--init-hook='import sys; sys.path.append(\".\")'"
let g:ale_python_flake8_options = '--max-line-length=120'

"g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0
let g:SimpylFold_fold_import = 0

autocmd Syntax python normal zR

silent! so .vimlocal
