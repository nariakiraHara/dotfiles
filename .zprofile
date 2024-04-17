# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zprofile.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zprofile.pre.zsh"
export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"

# export JAVA_HOME=`/usr/libexec/java_home -v "11"`
# export PATH=${JAVA_HOME}/bin:${PATH}
# eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/opt/homebrew/bin/brew shellenv)"
# eval "$(jenv init -)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zprofile.post.zsh" ]] && builtin source "$HOME/.fig/shell/zprofile.post.zsh"
