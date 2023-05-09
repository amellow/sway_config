if status is-interactive
    set fish_greeting

    set -gx EDITOR "nvim"
    set -gx VISUAL "nvim"

    alias cdb="cd .."
    alias cdt="cd -"

    alias updatedb="sudo updatedb"
    alias locate="locate -i"
    
    alias performance="powerprofilesctl set performance"
    alias balanced="powerprofilesctl set balanced"
    alias powersaver="powerprofilesctl set power-saver"

    alias c="clear"
    alias rcp="rsync -ah --inplace --no-whole-file --info=progress2"

    alias backup_mirros="sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak"
    alias update_mirrors="sudo reflector --latest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist"

    alias v="nvim"

    alias install="sudo dnf install"
    alias uninstall="sudo dnf remove"
    alias update="sudo dnf update"
    alias finstall="flatpak install"
    alias funinstall="flatpak uninstall"
    alias fupdate="flatpak update"
    alias flist="flatpak list"

    alias cdirr="pwd"

    alias yt_song="yt-dlp -x --audio-format opus -f bestaudio --add-metadata --embed-thumbnail"
    alias yt_playlist="yt-dlp --ignore-errors --continue --no-overwrites --download-archive progress.txt -x --audio-format opus -f bestaudio --add-metadata --embed-thumbnail --yes-playlist"

    alias school_dir="cd ~/Documents/School/"
    alias config_sway="cd ~/.config/sway/"
    alias config_alacritty="cd ~/.config/alacritty/"
    alias config_fish="cd ~/.config/fish/"
    alias config_waybar="cd ~/.config/waybar/"
    alias config_wofi="cd ~/.config/wofi/"
    alias config_ranger="cd ~/.config/ranger/"
    alias config_mako="cd ~/.config/mako"

    alias twitch='streamlink -p mpv --twitch-disable-ads --twitch-low-latency'

    starship init fish | source
end
