let g:ale_completion_enabled = 0

" let b:ale_linters = {'cpp': ['clangcheck', 'cppcheck', 'clangtidy']}
" let b:ale_fixers = ['clang-format', 'clangtidy', 'remove_trailing_lines', 'trim_whitespace', 'uncrustify']

let b:ale_linters = {'cpp': ['clangcheck', 'clangtidy']}
let b:ale_fixers = ['clang-format', 'remove_trailing_lines', 'trim_whitespace', 'uncrustify']

" let b:ale_fixers = []

let g:ale_cpp_clangcheck_executable = 'clang-check-10'
let g:ale_cpp_clangtidy_executable = 'clang-tidy-10'

let g:ale_warn_about_trailing_whitespace = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'always'
" let g:ale_python_flake8_options = '--max-line-length=120'
" let g:ale_python_pylint_options = '--from-stdin'

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'


