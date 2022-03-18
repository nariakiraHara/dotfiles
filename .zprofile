export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"
eval "$(rbenv init -)"

export JAVA_HOME=`/usr/libexec/java_home -v "11"`
export PATH=${JAVA_HOME}/bin:${PATH}
