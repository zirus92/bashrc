
# ~/.bashrc — versión unificada, limpia y comentada
# --- Fuerza modo silencioso ---

# 1. EJECUCIÓN SOLO EN MODO INTERACTIVO

case $- in
    *i*) ;;
    *) return;;
esac


# 2. HISTORIAL DE COMANDOS (MEJORADO)

# Evita duplicados y comandos con espacio inicial
HISTCONTROL=ignoreboth:erasedups

# Tamaño del historial
HISTSIZE=100000
HISTFILESIZE=100000

# Fecha y hora en el historial
HISTTIMEFORMAT='%d/%m/%y %T  '

# Añadir al historial, no sobrescribir
shopt -s histappend

# Guardar cada comando inmediatamente
PROMPT_COMMAND='history -a'

# Guardar comandos multilínea correctamente



# 3. OPCIONES DE COMODIDAD DEL SHELL

shopt -s checkwinsize      # Ajusta tamaño de la terminal
shopt -s autocd            # cd implícito
shopt -s globstar          # ** recursivo
shopt -s expand_aliases    # Aliases en scripts
set +v

# 4. LESS MEJORADO

export LESS='-R -F -X -i'
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# 5. ENTORNO DEBIAN CHROOT (CLÁSICO)

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi


# 6. PROMPT PERSONALIZADO (TU ESTILO)

PS1="\[\033[0;36m\]┌──(\[\033[0;37m\]\u ⨳ \h\[\033[0;36m\])─[\[\033[0;37m\]\w\[\033[0;36m\]]\n└─\[\033[0;36m\]λ \[\033[0m\]"


# 7. TÍTULO DE LA TERMINAL (XTERM/RXVT)

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
esac



# 8. COLORES Y LS (CLÁSICO)

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi


# 9. ALIAS — NAVEGACIÓN

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'


# 10. ALIAS — LISTADO DE ARCHIVOS (LSD)

alias ls='lsd'
alias l='lsd -l'
alias la='lsd -a'
alias ll='lsd -la'
alias lt='lsd --tree'


# 11. ALIAS — SEGURIDAD DE ARCHIVOS

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'


# 12. ALIAS — SISTEMA Y RECURSOS

alias df='df -h'
alias du='du -h'
alias free='free -h'
alias meminfo='free -m -l -t'
alias cpuinfo='lscpu'
alias diskinfo='df -H'
alias sysinfo='uname -a'
alias ports='ss -tulanp'
alias ping='ping -c 5'


# 13. RED E IP

alias myip='curl -s https://api.ipify.org'
alias localip="ip route get 1 | awk '{print \$NF;exit}'"


# 14. GREP CON COLOR

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'


# 15. GIT

alias gs='git status'
alias ga='git add'
alias gp='git push'
alias gl='git log --oneline --graph --all'
alias gcmsg='git commit -m'


# 16. APT / PAQUETES

alias update='sudo apt update && sudo apt upgrade'
alias install='sudo apt install'
alias purge='sudo apt purge'
alias remove='sudo apt remove'
alias search='apt search'


# 17. PYTHON

alias py='python3'
alias pip='pip3'
alias venv='python3 -m venv'

export PATH="$PATH:$HOME/.local/bin"

activate() {
    if [ -f "$1/bin/activate" ]; then
        source "$1/bin/activate"
        echo "✔ Entorno virtual activado: $1"
    else
        echo "❌ No existe el entorno virtual: $1"
    fi
}

mkvenv() {
    python3 -m venv "$1" && source "$1/bin/activate"
}


# 18. NODE / NPM

alias ni='npm install'
alias ns='npm start'
alias nt='npm test'

# NVM (si existe)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"


# 19. UTILIDADES PERSONALES

dmk() { mkdir -p "$1" && cd "$1"; }
ftext() { grep -R "$1" .; }
sizeof() { du -sh "$1"; }


# 20. ZOXIDE

command -v zoxide >/dev/null && eval "$(zoxide init bash)"


# 21. TLDR

alias tldru='tldr --update'


# 22. BASH COMPLETION

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


# 23. ALIAS EXTERNOS

[ -f ~/.bash_aliases ] && source ~/.bash_aliases

# 24. SEGURIDAD
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias rm='rm -Iv --preserve-root'

