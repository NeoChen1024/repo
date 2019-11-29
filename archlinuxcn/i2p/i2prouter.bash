_i2prouter() 
{
    local cur prev opts
    _init_completion || return

    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="console start stop graceful restart dump"
    COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
}
complete -F _i2prouter i2prouter
