eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/Users/kacper/.cargo/bin:$PATH"
export PATH="/Users/kacper/Personal/envmanage/target/debug:$PATH"
export NVM_DIR="$HOME/.nvm"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
