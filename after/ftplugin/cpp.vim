" let g:ale_completion_enabled = 1

" let b:ale_linters = {'cpp': ['clangcheck', 'clangtidy']}
let b:ale_fixers = ['clang-format', 'remove_trailing_lines', 'trim_whitespace', 'uncrustify']

let g:ale_warn_about_trailing_whitespace = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'always'

let b:ale_fixers = ['clang-format']
let g:ale_cpp_clang_options = '-std=c++20 -Wall'
let g:ale_cpp_gcc_options = '-std=c++20 -Wall'

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'


