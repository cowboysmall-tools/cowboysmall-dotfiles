
GITSTATUS_LOG_LEVEL=DEBUG

# export KUBECONFIG=$KUBECONFIG:$HOME/.kube/config:$HOME/.kube/configs/petit-prod-kubeconfig.yaml

export NLTK_DATA=$HOME/.local/share/nltk_data
export ANDROID_HOME=$HOME/Android/Sdk
export GOPATH=$HOME/.go
export NPM_PREFIX=$HOME/.npm-global

# export PATH=$PATH:$ANDROID_HOME/emulator
# export PATH=$PATH:$ANDROID_HOME/platform-tools
# export PATH=$NPM_PREFIX/bin:$PATH
# export PATH=$GOPATH/bin:$PATH

export PATH=$HOME/.local/bin:/usr/local/bin:$GOPATH/bin:$NPM_PREFIX/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools:$PATH

. "$HOME/.cargo/env"
