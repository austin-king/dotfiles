# ZSH configuration
# Path to oh-my-zsh installation.
export ZSH="/Users/$USER/.oh-my-zsh"
# Uncomment the following line to automatically update zsh without prompting.
DISABLE_UPDATE_PROMPT="true"
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colorize)

# ZSH Theme configuration
# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="lambda"
source $ZSH/oh-my-zsh.sh

# NVM configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source $(brew --prefix nvm)/nvm.sh

# -----------------------------------------------------------------------------
#                                    Aliases
# -----------------------------------------------------------------------------
# neovim 
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
# zsh editing 
alias sz='source ~/.zshrc'
alias vz='nvim ~/.zshrc'
# npm 
alias 's=npm run start'
alias 'te=npm run test'
alias 'tw=npm run testWatch'
alias 'b=npm run build'
alias 'bw=npm run buildWatch'
alias 'l=npm run lint'
alias 'lw=npm run lintWatch'
# git 
alias 'gc=git commit'
alias 'gb=git branch'
alias 'ga=git add'
alias 'gpu=git push'
alias 'gpl=git pull'
alias 'gs=git status'
alias 'gd=git diff'
alias 'gds=git diff --staged'
alias 'gD=git branch -D'
alias 'gch=git checkout'
alias 'gchb=git checkout -b'
alias 'glc=git ls-files | xargs wc -l'
alias 'gpo=gpu --set-upstream origin'
alias 'grc=git rebase --continue'
alias 'grs=git rebase --skip'
alias 'gunstage=git reset HEAD'
alias 'gundo=git reset --soft HEAD~1'
alias 'gg=git grep -n'
alias 'ggi=git grep -n -i'
# tmux 
alias 't=tmux'
alias 'ta=t attach -t'
alias 'tn=t new-s'
alias 'tk=t kill-session -t'
alias 'tks=t kill-server'
alias 'ts=t switch -t'
alias 'tls=t ls'
# terminal
alias 'c=clear'
