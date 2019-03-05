grep --color=tty -E 'log.(trace|debug|info|warn|error).*(`|'\''|").*,.*(\1).*' -R modules/ routes/
