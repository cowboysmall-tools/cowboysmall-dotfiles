
GITSTATUS_LOG_LEVEL=DEBUG


# export KUBECONFIG=$KUBECONFIG:$HOME/.kube/config:$HOME/.kube/configs/petit-prod-kubeconfig.yaml


export R_LIBS_USER=$HOME/.local/share/R/%p-library/%v
export R_PROFILE_USER=$HOME/.config/R/rprofile
export R_ENVIRON_USER=$HOME/.config/R/renviron


export NLTK_DATA=$HOME/.local/share/nltk_data


export ANDROID_HOME=$HOME/Apps/Android/Sdk
export FLUTTER_HOME=$HOME/Apps/flutter
export GOPATH=$HOME/.go
export NPM_PREFIX=$HOME/.npm-global


export PATH=$HOME/.local/bin:/usr/local/bin:$GOPATH/bin:$NPM_PREFIX/bin:$FLUTTER_HOME/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools:$PATH


source $HOME/.cargo/env
