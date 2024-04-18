#!/data/data/com.termux/files/usr/bin/bash
echo "Went to Restore Your Termux Default Prompt?"
read answer

if [ "$answer" = "yes" ]; then
    rm /data/data/com.termux/files/home/.config/fish//config.fish && cp $HOME/.backup/shell/config.fish /data/data/com.termux/files/home/.config/fish/
elif [ "$answer" = "no" ]; then
    echo "Prompt Not Changed"
else
    echo "Please Answer in "yes" or "no" Statment."
fi
