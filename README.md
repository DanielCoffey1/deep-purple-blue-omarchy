# Deep Blue & Purple Theme for Omarchy

<div align="center">

A comprehensive theme featuring deep blues and rich purples for a modern, elegant desktop environment.

**[Installation](#installation)** • **[Features](#features)** • **[Screenshots](#screenshots)** • **[Customization](#customization)**

---

### 🚀 Quick Install

```bash
git clone https://github.com/DanielCoffey1/deep-purple-blue-omarchy.git ~/.config/omarchy/themes/deep-purple-blue && cd ~/.config/omarchy/themes/deep-purple-blue && ./apply-theme.sh
```

</div>

---

## Preview

> Add your screenshot here! Take a screenshot of your desktop and add it to this repository as `preview.png`

## Color Palette

| Color | Hex | Preview | Usage |
|-------|-----|---------|-------|
| Primary Background | `#0d0a1a` | ![#0d0a1a](https://via.placeholder.com/50x30/0d0a1a/0d0a1a.png) | Main background |
| Secondary Background | `#1a0f2e` | ![#1a0f2e](https://via.placeholder.com/50x30/1a0f2e/1a0f2e.png) | Panels, sidebars |
| Tertiary Background | `#2d1b69` | ![#2d1b69](https://via.placeholder.com/50x30/2d1b69/2d1b69.png) | Active elements |
| Primary Foreground | `#e0d4ff` | ![#e0d4ff](https://via.placeholder.com/50x30/e0d4ff/e0d4ff.png) | Text |
| Accent Purple | `#b794f6` | ![#b794f6](https://via.placeholder.com/50x30/b794f6/b794f6.png) | Highlights, borders |
| Accent Blue | `#7b68ee` | ![#7b68ee](https://via.placeholder.com/50x30/7b68ee/7b68ee.png) | Secondary accent |
| Light Blue | `#82aaff` | ![#82aaff](https://via.placeholder.com/50x30/82aaff/82aaff.png) | Links, info |
| Light Purple | `#c792ea` | ![#c792ea](https://via.placeholder.com/50x30/c792ea/c792ea.png) | Special elements |

## Features

✨ **Visual Effects**
- Gradient borders in Hyprland with smooth color transitions
- Rounded corners (10px) for modern aesthetics
- Blur effects with optimized performance
- Subtle drop shadows for depth

🎨 **Comprehensive Theming**
- Consistent color scheme across all applications
- Custom terminal color palettes
- Themed notifications and overlays
- GTK application support
- **Complete Waybar configuration included** (layout, modules, and styling)
- **4 matching wallpapers included** (deep blue/purple aesthetic)

⚡ **Performance**
- Optimized for Wayland/Hyprland
- Efficient blur settings
- Minimal resource overhead

## Applications Themed

- **Window Manager**: Hyprland, Hyprlock
- **Status Bar**: Waybar
- **Terminals**: Kitty, Alacritty, Ghostty
- **Notifications**: Mako
- **System**: GTK applications, btop
- **Launchers**: Walker
- **Overlays**: SwayOSD
- **Editors**: Neovim, VSCode
- **Browser**: Chromium

## Installation

### Prerequisites

- **[Omarchy](https://github.com/omakoto/omarchy)** - Required (the directory structure, not the GUI)
- Hyprland (recommended: latest version)
- Any applications you want to theme from the list above

> **Note:** The `omarchist` GUI is optional - the `apply-theme.sh` script handles everything automatically! If you don't have Omarchy at all, see "Manual Installation without Omarchy" below.

### Quick Install

```bash
# Clone the repository
git clone https://github.com/DanielCoffey1/deep-purple-blue-omarchy.git ~/.config/omarchy/themes/deep-purple-blue

# Apply the theme
cd ~/.config/omarchy/themes/deep-purple-blue
./apply-theme.sh
```

### Manual Install

1. **Download the theme:**
   ```bash
   git clone https://github.com/DanielCoffey1/deep-purple-blue-omarchy.git ~/.config/omarchy/themes/deep-purple-blue
   ```

2. **Apply using the included script (no GUI needed):**
   ```bash
   cd ~/.config/omarchy/themes/deep-purple-blue
   ./apply-theme.sh
   ```

3. **Or use Omarchist GUI (optional):**
   ```bash
   omarchist
   # Select "deep-purple-blue" from the theme list
   ```

4. **Or apply manually with symlink:**
   ```bash
   ln -sf ~/.config/omarchy/themes/deep-purple-blue ~/.config/omarchy/current/theme
   hyprctl reload
   killall waybar && waybar &
   killall mako && mako &
   ```

4. **Restart applications:**
   - Terminals (for new color schemes)
   - GTK applications
   - Neovim (if open)

### Uninstall

```bash
# Switch to a different theme first
omarchist  # or manually change the symlink

# Remove the theme directory
rm -rf ~/.config/omarchy/themes/deep-purple-blue
```

### Manual Installation without Omarchy

If you're not using Omarchy, you can still use individual theme files by copying them to their respective locations:

```bash
# Clone the theme anywhere
git clone https://github.com/DanielCoffey1/deep-purple-blue-omarchy.git ~/Downloads/deep-purple-blue

cd ~/Downloads/deep-purple-blue

# Copy individual configs (adjust paths as needed)
# Hyprland
cat hyprland.conf >> ~/.config/hypr/hyprland.conf

# Waybar
cp waybar.css ~/.config/waybar/style.css

# Kitty
cat kitty.conf >> ~/.config/kitty/kitty.conf

# Alacritty
cat alacritty.toml >> ~/.config/alacritty/alacritty.toml

# Mako
cp mako.ini ~/.config/mako/config

# GTK
mkdir -p ~/.config/gtk-4.0 ~/.config/gtk-3.0
cp gtk.css ~/.config/gtk-4.0/gtk.css
cp gtk.css ~/.config/gtk-3.0/gtk.css

# Reload your applications after copying
hyprctl reload
killall waybar && waybar &
killall mako && mako &
```

**Warning:** This method appends/overwrites your existing configs. Back them up first!

## Customization

### Changing Colors

All color definitions are centralized in each configuration file. To customize:

1. **Hyprland borders:** Edit `hyprland.conf` lines 7-8
2. **Terminal colors:** Edit your terminal's config file (e.g., `kitty.conf`)
3. **Waybar:** Edit `waybar.css` color definitions at the top
4. **GTK apps:** Edit `gtk.css` color definitions

### Adjusting Effects

In `hyprland.conf`:
- **Blur intensity:** Change `blur.size` (default: 6)
- **Border size:** Change `border_size` (default: 2)
- **Rounding:** Change `rounding` (default: 10)
- **Gaps:** Adjust `gaps_in` and `gaps_out`

## File Structure

```
deep-purple-blue/
├── backgrounds/         # Wallpapers (4 images included)
│   ├── BG1.jpg
│   ├── BG2.jpg
│   ├── BG3.jpeg
│   └── BG4.jpg
├── hyprland.conf       # Window manager theme
├── hyprlock.conf       # Lock screen colors
├── waybar.css          # Waybar color definitions
├── waybar-config.jsonc # Complete Waybar configuration
├── waybar-style.css    # Waybar styling
├── kitty.conf          # Kitty terminal theme
├── alacritty.toml      # Alacritty terminal theme
├── ghostty.conf        # Ghostty terminal theme
├── gtk.css             # GTK application theme
├── mako.ini            # Notification daemon theme
├── neovim.lua          # Neovim color scheme
├── btop.theme          # System monitor theme
├── walker.css          # App launcher theme
├── swayosd.css         # Volume/brightness OSD theme
├── vscode.json         # VSCode color customizations
├── chromium.theme      # Browser theme preference
├── icons.theme         # Icon theme preference
├── apply-theme.sh      # Theme application script
└── README.md           # This file
```

## Screenshots

> **Tip**: Add screenshots of your setup! Suggested shots:
> - Full desktop overview
> - Terminal with code/text
> - Notification example
> - Lock screen
> - Application windows

## Contributing

Contributions are welcome! Feel free to:
- Report bugs
- Suggest new features
- Submit pull requests for improvements
- Share your customizations

## License

This theme is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Created for [Omarchy](https://github.com/omakoto/omarchy)
- Inspired by deep blue and purple color aesthetics
- Built for the Hyprland community

---

<div align="center">

**Enjoy your new theme!** ⭐

If you like this theme, consider giving it a star on GitHub!

</div>
