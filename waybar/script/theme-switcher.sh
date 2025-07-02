#!/bin/bash

# Theme Switcher Script untuk Waybar
# Simpan di ~/.config/waybar/scripts/theme-switcher.sh

CONFIG_DIR="$HOME/.config"
THEME_FILE="$CONFIG_DIR/waybar/current_theme"

# Buat direktori jika belum ada
mkdir -p "$CONFIG_DIR/waybar/scripts"

# Fungsi untuk mendapatkan status theme saat ini
get_current_theme() {
    if [[ -f "$THEME_FILE" ]]; then
        cat "$THEME_FILE"
    else
        echo "dark"
    fi
}

# Fungsi untuk mengubah theme
toggle_theme() {
    current_theme=$(get_current_theme)
    
    if [[ "$current_theme" == "dark" ]]; then
        new_theme="light"
        icon="☀️"
    else
        new_theme="dark"
        icon="🌙"
    fi
    
    echo "$new_theme" > "$THEME_FILE"
    
    # Di sini Anda bisa menambahkan command untuk mengubah theme aplikasi lain
    # Contoh:
    # gsettings set org.gnome.desktop.interface gtk-theme "Adwaita${new_theme^}"
    # gsettings set org.gnome.desktop.interface color-scheme "prefer-${new_theme}"
    
    # Untuk terminal (contoh dengan alacritty)
    # if [[ "$new_theme" == "light" ]]; then
    #     ln -sf "$CONFIG_DIR/alacritty/themes/light.toml" "$CONFIG_DIR/alacritty/theme.toml"
    # else
    #     ln -sf "$CONFIG_DIR/alacritty/themes/dark.toml" "$CONFIG_DIR/alacritty/theme.toml"
    # fi
    
    # Restart waybar untuk mengaplikasikan perubahan
    pkill -SIGUSR2 waybar 2>/dev/null || true
    
    notify-send "Theme Changed" "Switched to $new_theme mode" -t 2000 2>/dev/null || true
}

# Fungsi untuk menampilkan status
show_status() {
    current_theme=$(get_current_theme)
    
    if [[ "$current_theme" == "dark" ]]; then
        echo "🌙"
    else
        echo "☀️"
    fi
}

# Main logic
case "$1" in
    "toggle")
        toggle_theme
        ;;
    "status")
        show_status
        ;;
    "current")
        get_current_theme
        ;;
    *)
        echo "Usage: $0 {toggle|status|current}"
        echo "  toggle  - Switch between dark and light theme"
        echo "  status  - Show current theme icon"
        echo "  current - Show current theme name"
        exit 1
        ;;
esac