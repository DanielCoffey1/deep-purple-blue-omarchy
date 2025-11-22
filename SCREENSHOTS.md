# Adding Screenshots

This guide will help you add screenshots to showcase this theme.

## Taking Screenshots

### Full Desktop Screenshot

```bash
# Using grim (Wayland)
grim ~/Pictures/desktop-overview.png

# Or with selection
grim -g "$(slurp)" ~/Pictures/screenshot.png
```

### Recommended Screenshots

1. **Desktop Overview** (`preview.png`)
   - Full desktop with multiple windows open
   - Shows Waybar, terminal, file manager, etc.
   - This becomes the main preview image

2. **Terminal** (`screenshots/terminal.png`)
   - Terminal with code or colorful output
   - Use `neofetch` or `colorscript` to show colors
   - Example: `kitty @ --help` or code snippet

3. **Notification** (`screenshots/notification.png`)
   - Example notification from Mako
   - Use: `notify-send "Test" "This is a test notification"`

4. **Lock Screen** (`screenshots/lockscreen.png`)
   - Hyprlock screen
   - Run `hyprlock` and screenshot before unlocking

5. **Application Windows** (`screenshots/apps.png`)
   - Show themed GTK applications
   - File manager, text editor, etc.

## Adding to Repository

1. Create screenshots directory:
   ```bash
   mkdir -p screenshots
   ```

2. Move your screenshots:
   ```bash
   mv ~/Pictures/desktop-overview.png preview.png
   mv ~/Pictures/terminal.png screenshots/
   # etc.
   ```

3. Update README.md:
   Replace the preview section with:
   ```markdown
   ## Preview

   ![Desktop Overview](preview.png)

   <details>
   <summary>More Screenshots</summary>

   ### Terminal
   ![Terminal](screenshots/terminal.png)

   ### Notifications
   ![Notification](screenshots/notification.png)

   ### Lock Screen
   ![Lock Screen](screenshots/lockscreen.png)

   </details>
   ```

4. Commit and push:
   ```bash
   git add preview.png screenshots/
   git commit -m "Add screenshots"
   git push
   ```

## Tips for Great Screenshots

- Use a resolution of at least 1920x1080
- Show multiple themed applications
- Include colorful terminal output to showcase the color scheme
- Clean up your desktop before taking screenshots
- Show both light and dark UI elements if possible
- Consider using `imagemagick` to add borders:
  ```bash
  convert preview.png -bordercolor '#b794f6' -border 2 preview.png
  ```

## Optional: Create a Showcase GIF

```bash
# Record your screen
wf-recorder -f showcase.mp4

# Convert to GIF (requires ffmpeg)
ffmpeg -i showcase.mp4 -vf "fps=10,scale=1280:-1:flags=lanczos" showcase.gif
```

Then add to README:
```markdown
![Theme Showcase](showcase.gif)
```
