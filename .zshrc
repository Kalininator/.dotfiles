export VISUAL="nvim"
export EDITOR=$VISUAL

export TERM="xterm-256color"
export ZSH="/Users/kal/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

export PATH=${HOME}/go/bin:$PATH
source /opt/homebrew/opt/powerlevel9k/powerlevel9k.zsh-theme
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status )
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

unsetopt share_history

plugins=(
  git
  zsh-autosuggestions
)

alias tnew="tmux new -s"
alias ta="tmux a -t"
alias tkill="tmux kill-session -t"
alias tls="tmux ls"
alias v="nvim"
alias vim="nvim"
alias r="ranger"
alias wttr="curl wttr.in/London"
alias python="python3"
alias cr="cargo run"
alias k="kubectl"
alias kaf="kubectl apply -f "
alias ap="ansible-playbook"
alias flushdns="sudo killall -HUP mDNSResponder"
alias cddot="cd ~/.dotfiles"
alias tf="terraform"
alias tfp="terraform plan"
alias tfa="terraform apply"
# alias git-ssh="git remote set-url origin git@github.com:\$(git remote get-url origin | sed 's/https:\/\/github.com\///' | sed 's/git@github.com://')"
alias gp="git push"
alias gfp="git fetch && git pull"
# alias gd="git checkout $(git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@')"
alias ghpr="gh pr create --web"
alias gb="git checkout -b"
alias p8="ping 8.8.8.8"
alias st="speedtest"
alias br="./bin/dev.js"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
bindkey -v

addToPathFront() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$1:$PATH
    fi
}
addToPathFront $HOME/.local/bin
# alias tmux-sessionizer="~/.local/bin/tmux-sessionizer"
bindkey -s ^f "tmux-sessionizer\n"

function cdgit() {
	cd ~/Documents/Github/$1
}

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

ulimit -Sn 10240

export PATH="/opt/homebrew/opt/python@3.12/libexec/bin:$PATH"
eval "$(~/.local/bin/mise activate zsh)"

source <(fzf --zsh)
eval "$(~/.local/bin/mise activate)"
