eval "$(/opt/homebrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH="$HOME/Deps/clang/bin:$PATH"
export PATH="$HOME/Deps/lua-lsp/bin:$PATH"
export PATH="$HOME/Deps/stylua/bin:$PATH"
export PATH="$HOME/Deps/svelte-lsp:$PATH"
export PATH="$HOME/Developer/water-renderer/lib/bgfx-cmake/build/cmake/bgfx:$PATH"
export PATH="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:$PATH"
export PATH="$HOME/Developer/cli-calendar/.build/debug:$PATH"
export PATH="$HOME/Deps/shfmt/bin:$PATH"
