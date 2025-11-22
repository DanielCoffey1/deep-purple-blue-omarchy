#!/bin/bash
# ────────────────────────────────────────────────────────────
# Apply Deep Blue & Purple Theme
# Made with Omarchist
# ────────────────────────────────────────────────────────────

set -e

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  Deep Blue & Purple Theme Installer"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Get the directory where the script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
THEME_NAME="$(basename "$SCRIPT_DIR")"

echo "→ Installing theme from: $SCRIPT_DIR"
echo ""

# Check if Omarchy is installed
if [ ! -d ~/.config/omarchy ]; then
    echo "✗ Error: Omarchy configuration directory not found!"
    echo "  Please install Omarchy first."
    exit 1
fi

# Create themes directory if it doesn't exist
mkdir -p ~/.config/omarchy/themes

# If the theme isn't already in the themes directory, copy it there
if [ "$SCRIPT_DIR" != "$HOME/.config/omarchy/themes/$THEME_NAME" ]; then
    echo "→ Copying theme to ~/.config/omarchy/themes/$THEME_NAME"
    cp -r "$SCRIPT_DIR" ~/.config/omarchy/themes/
    THEME_PATH=~/.config/omarchy/themes/$THEME_NAME
else
    THEME_PATH="$SCRIPT_DIR"
fi

# Create current directory if it doesn't exist
mkdir -p ~/.config/omarchy/current

echo "→ Applying theme..."
# Change theme symlink
ln -sf "$THEME_PATH" ~/.config/omarchy/current/theme

echo "→ Reloading Hyprland..."
# Reload Hyprland configuration
if command -v hyprctl &> /dev/null; then
    hyprctl reload
else
    echo "  ⚠ Hyprctl not found, skipping Hyprland reload"
fi

echo "→ Reloading Waybar..."
# Reload Waybar
if pgrep -x waybar > /dev/null; then
    killall waybar
    sleep 0.5
    waybar &> /dev/null &
    disown
else
    echo "  ⚠ Waybar not running, skipping"
fi

echo "→ Reloading Mako..."
# Reload Mako
if command -v mako &> /dev/null; then
    if pgrep -x mako > /dev/null; then
        killall mako
        sleep 0.5
    fi
    mako &> /dev/null &
    disown
else
    echo "  ⚠ Mako not found, skipping"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✓ Theme applied successfully!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "To fully apply all theme changes, consider:"
echo "  • Restarting your terminal (kitty/alacritty/ghostty)"
echo "  • Restarting GTK applications"
echo "  • Restarting Neovim (if open)"
echo "  • Reloading VSCode window (Ctrl+Shift+P → Reload Window)"
echo ""
echo "Enjoy your new theme! ⭐"
echo ""
