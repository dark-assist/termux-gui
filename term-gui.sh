tu#!/data/data/com.termux/files/usr/bin/bash
# This is a simple bash script for installing Termux gui version work on Termux-x11.
# Credit Sanatani-hacker.
clear
echo "TERMUX Xfce4 ENVIRONMENT SETUP SCRIPT BY SANATANI-HACKER "
echo "Telegram: https://t.me/temuxhacking"
echo "Github: https://github.com/dark-assist"
sleep 2.5
cd $HOME
echo "Updating Termux..."
apt update;apt install apt -y;apt update
clear
echo "Installing X11-repo....."
apt install x11-repo -y
clear
echo "Trying to Install xfce4....."
echo "It Takes 5-10 minutes So Wait in Patient :)"
apt install xfce4 -y
clear
echo "Installing Fish Shell for Better Look"
apt install fish -y
clear
mkdir $HOME/.backup/ && mkdir $HOME/.backup/shell/

config_file="/data/data/com.termux/files/home/.config/fish/config.fish"

if [ -f "$config_file" ]; then
    echo "Fish Shell config File Found, Trying to Backup it." && cp /data/data/com.termux/files/home/.config/fish/config.fish $HOME/.backup/shell/
else
    echo "Fish shell configuration File Not Found :)"
fi
echo "Went to Use Our Sanatani Shell Prompt ?"
read answer

if [ "$answer" = "yes" ]; then
    echo 'if status is-interactive
    # Commands to run in interactive sessions can go here
set -g fish_greeting (set_color green) "Welcome SANATANI-HACKER" (set_color normal)
function fish_prompt
    set_color green
    echo -n "sanatani"
    set_color normal
    echo -n '$'
    set_color blue
    echo -n "hacker"
    set_color normal
    echo -n ' '
    set_color green
    echo -n (prompt_pwd)
    set_color normal
    echo -n '~>'
    set_color normal
    echo -n ' '
end
end' > ~/.config/fish/config.fish
elif [ "$answer" = "no" ]; then
    echo ":)"
else
    echo "Please Answer in 'yes' or 'no' Statement."
fi
clear
echo "Trying to Print Your Device CPU Architecture."
uname -a
echo "Here Your CPU Architecture."
echo "Now This Will Open Termux-X11 Github Link Go and Install Your Architecture Supported Termux-x11 apk."
echo "Go and Download I will Wait 30 second for You."
sleep 4
termux-open-url "https://github.com/termux/termux-x11/releases"

draw_progress_bar() {
    local duration=$1
    local interval=$2
    local elapsed=0
    local progress=0
    local chars=("▁" "▂" "▃" "▄" "▅" "▆" "▇" "█")


    local total_steps=$((duration / interval))

    while [ $elapsed -lt $duration ]; do

        local progress=$((elapsed * 100 / duration))

        local current_step=$((elapsed / interval))
        printf "["
        for ((i=0; i<$total_steps; i++)); do
            if [ $i -lt $current_step ]; then
                printf "${chars[7]}"
            else
                printf " "
            fi
        done
        printf "] $progress%%\r"
        sleep $interval

        elapsed=$((elapsed + interval))
    done


    echo
}


duration=30
interval=1

draw_progress_bar $duration $interval

clear
echo "Installing Chrome Browser."
apt install chromium -y
clear
#Creating Links for Easy GUI Start.

echo "kill -9 $(pgrep -f "termux.x11") 2>/dev/null
        pulseaudio --start --load='module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1' --exit-idle-time=-1
        termux-x11 :1 &
        sleep 3
        am start --user 0 -n com.termux.x11/com.termux.x11.MainActivity > /dev/null 2>&1
        sleep 1
        export PULSE_SERVER=127.0.0.1
        export DISPLAY=:1 && xfce4-session
        exit 0 " > $PREFIX/bin/termgui

chmod 777 $PREFIX/bin/termgui
sleep 2
clear
echo "Run termgui to Start Gui"
echo "I will Update This Soon With More Customisation."
