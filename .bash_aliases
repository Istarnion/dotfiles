alias mc="mc -b"

alias install="sudo apt-get install"
alias purge="sudo apt-get purge"
alias remove="sudo apt-get remove"
alias autorm="sudo apt-get autoremove"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"

alias irc="ssh istarnion@loekken.org"

alias py="python3"

alias srn="sudo reboot now"
alias sdn="sudo shutdown now"

alias vim="nvim"
alias vimrc="nvim ~/.vimrc"

alias gcc="g++ -std=c++11"

alias ch="chromeStart"

alias asdf="setxkbmap us -variant colemak"
alias arst="setxkbmap no"

alias em="emacsStart"

alias blender="blenderStart"

alias android="(/opt/android-studio/bin/studio.sh &) && exit"

alias cd..="cd .."

alias godot="godot-1.1stable.64"

alias jtest="java -cp .:/usr/share/java/junit4.jar org.junit.runner.JUnitCore"

alias brws="exec i3-msg 'exec (pcmanfm &) > /dev/null'"

alias shorten="export PS1=$'\\[\\033[31m\\]\u2771\u2771\u2771 \\[\\033[0m\\]'"
alias psnorm="export PS1=$'\\[\\033[01;34m\\]\\w\\[\\033[31m\\] \u2771 \\[\\033[0m\\]'"


alias netbeans="exec i3-msg 'exec (/usr/local/netbeans-8.0.2/bin/netbeans &) > /dev/null'"

alias root='sudo "$BASH" -c "$(history -p !!)"'

alias cava="cava -i fifo -p /tmp/mpd.fifo"

alias xbox="sudo xboxdrv --device-by-id 0e6f:0301 --type xbox360 --silent &"

alias sudo='sudo '
