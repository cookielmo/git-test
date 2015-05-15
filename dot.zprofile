if true; then
#init
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

#Sublime Text を追加
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

export PATH=$HOME/.nodebrew/current/bin:$PATH


eval "$(rbenv init -)"

fi

