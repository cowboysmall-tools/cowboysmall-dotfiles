export PATH=$PATH:$HOME/.local/bin:/usr/local/bin
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"

source ~/.zshrc.pre-oh-my-zsh

GITSTATUS_LOG_LEVEL=DEBUG

# export JAVA_HOME=/usr/lib/jvm/java
# export NLTK_DATA=$HOME/Data/nltk_data
# export KUBECONFIG=$KUBECONFIG:$HOME/.kube/config:$HOME/.kube/configs/petit-prod-kubeconfig.yaml

export GOPATH=$HOME/.go
export PATH=$GOPATH/bin:$PATH
# export PATH=$PATH:$GOPATH/bin

export NPM_PREFIX=$HOME/.npm-global
export PATH=$NPM_PREFIX/bin:$PATH

echo
hostname | sed 's/.*/\u&/' | figlet
echo

echo
fortune
echo

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
