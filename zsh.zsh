## This file is public on github
# ZSH config is in ~/.zshrc
export EDITOR=vim
#ZSH_THEME="pure"
ZSH_THEME="agnoster"

LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

stty stop undef
xset r rate 255

############ SSH tips
# Access a servers website (behind a firewall) on ip:8080
# Server needs to add 'GatewayPorts yes' in /etc/ssh/sshd_config
# ssh -L 8080:localhost:80 user@host 

# Allow Local device to access the tunnel via lanip:8080
# ssh -L \*8080:localhost:8443 user@host 

# display my rails app(must be running on 3000) on a remote machine:8080
# ssh -R 8080:localhost:3000 user@remote

# ssh -p2200 root@hopserver -L 2201:endpoint:2200 -N
# Then ftp to localhost port 2201

# ssh -D 12345 root@proxyserver 
# Firefox: Pref - Advanced - Network - Settings -Manual Proxy - Socks Host: localhost, Port 12345
# ssh -D 192.168.0.10 ... allows local clients to share the tunnel

#programs
alias handy="printf 'Keyboard: \txmodmap -pke, xev, showkey,
Programs: \tgetprocid, exo-preferred-applications, 
Volume: \tpavucontrol, paprefs (RTP settings for network server)
Color picker: \tgpick
Airplay:	\t rygel
dd progress:	\t sudo kill -USR1 $(pgrep ^dd)
debug: \t dmesg, vmstat 1, mpstat -P ALL, iostat -xz 1,
 sar -n DEV 1, sar -n TCP, ETCP 1
'"
alias getprocid='xprop | grep WM_CLASS'

#i3 config
alias config="vi ~/.i3/config.base"
alias edit='vi ~/.i3/zsh.zsh'       # (edit this file)

#handy
alias open=xdg-open
alias xclip='xclip -selection c'
alias pi='ping 8.8.8.8'

#vol
alias volup='pactl set-sink-volume 1 +10%'
alias vold='pactl set-sink-volume 1 10%'


#system
alias v='vim -p'
alias vi='vim -p'
alias vim='vim -p'
alias vimrc='vim ~/.vimrc'
alias va='vagrant'
alias vag='vagrant'
alias doc='docker'
alias dock='docker'
alias doco='docker-compose'
alias doci='docker images'
alias docrmi='docker rmi --force'
alias docrmc='docker rm `docker ps -aq`'
alias dm='docker-machine'


alias ll='ls -lhp --group-directories-first'
alias l=ll
alias la='ls -lAhp --group-directories-first'

# Switch timezones
alias IS="timedatectl  set-timezone Atlantic/Reykjavik"
alias KOB="timedatectl set-timezone Europe/Copenhagen"

