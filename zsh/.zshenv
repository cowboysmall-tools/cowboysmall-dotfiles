
GITSTATUS_LOG_LEVEL=DEBUG

# export KUBECONFIG=$KUBECONFIG:$HOME/.kube/config:$HOME/.kube/configs/petit-prod-kubeconfig.yaml

export NLTK_DATA=$HOME/.local/share/nltk_data
export GOPATH=$HOME/.go
export ANDROID_HOME=$HOME/Apps/Android/Sdk
export FLUTTER_HOME=$HOME/Apps/flutter
export NPM_PREFIX=$HOME/.npm-global

export PATH=$HOME/.local/bin:/usr/local/bin:$GOPATH/bin:$NPM_PREFIX/bin:$FLUTTER_HOME/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools:$PATH


. "$HOME/.cargo/env"
