export EDITOR='vim'
export VISUAL=$EDITOR
export GIT_EDITOR=$EDITOR

export LSCOLORS=ExFxBxDxCxegedabagacad

export PATH=${HOME}/bin:${PATH}
export PATH=$PATH:/usr/lib/android-sdk-linux/platform-tools # Android SDK
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/opt/local/sbin
export PATH=$PATH:/opt/local/bin
export PATH=$PATH:/opt/X11/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/sbin
export PATH=$PATH:/bin

export MANPATH=/opt/local/share/man:$MANPATH

# Set a huge java heap. Because reasons.
#BIG_HEAP="-J-Xmx1400M -J-XX:MaxPermSize=256M -J-XX:ReservedCodeCacheSize=64M"
#export JRUBY_OPTS="${BIG_HEAP}"

#export JAVA_HOME=$(/usr/libexec/java_home)
#export JDK_HOME=$(/usr/libexec/java_home)

# nvm... it's a thing
if [ -d ~/.nvm ]; then
  source ~/.nvm/nvm.sh
fi
