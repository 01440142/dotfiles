rmhl number-lines

set -add global ui_options terminal_assistant=none
set -add global ui_options terminal_enable_mouse=false
set global modelinefmt '{{mode_info}} %val{cursor_line}:%val{cursor_char_column} {{context_info}}%val{bufname} %val{session}'

map global goto 'n' '<esc>:bn<ret>' -docstring 'next buffer'
map global goto 'p' '<esc>:bp<ret>' -docstring 'previous buffer'
map global user '/' ':search ' -docstring 'search'
map global user '#' ':comment-line<ret>' -docstring 'comment'
map global user 'f' ':format<ret>' -docstring 'format'
map global user 'p' '<a-!>tmux show-buffer<ret>' -docstring 'paste (tmux)'
map global user 'q' ':q<ret>' -docstring 'quit'
map global user 'w' ':wa<ret>' -docstring 'write (all)'
map global user 'x' ':db<ret>' -docstring 'delete'

def search -params 1 %{ edit %arg{1} }
compl search shell-script-candidates %{ find . -type f }

hook global InsertChar j %{try %{
  exec -draft hH <a-k>jj<ret> d
  exec -with-hooks <esc>
} }
hook global WinSetOption filetype=c %{
    set buffer formatcmd 'clang-format -style=llvm'
    set buffer indentwidth 2
}

# code
face global value default
face global type default
face global variable default
face global module default
face global function default
face global string default
face global keyword default
face global operator default
face global attribute default
face global comment default+d
face global documentation default
face global meta default
face global builtin default
# markup
face global title default
face global header default
face global mono default
face global block default
face global link default
face global bullet default
face global list default
# builtin faces
face global Default default,default
face global PrimarySelection default+r 
face global SecondarySelection default+r
face global PrimaryCursor default+r
face global SecondaryCursor default+r
face global PrimaryCursorEol default+r
face global SecondaryCursorEol default+r
face global LineNumbers default
face global LineNumberCursor default
face global MenuForeground default+r
face global MenuBackground default
face global MenuInfo default
face global Information default
face global Error default
face global DiagnosticError default
face global DiagnosticWarning default
face global StatusLine default
face global StatusLineMode default
face global StatusLineInfo default
face global StatusLineValue default
face global StatusCursor default
face global Prompt default
face global MatchingChar default+d
face global Whitespace default+d
face global BufferPadding default
