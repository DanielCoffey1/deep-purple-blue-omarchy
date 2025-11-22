# Publishing to GitHub

This guide will help you publish your theme to GitHub so others can use it.

## Quick Setup

### 1. Create a GitHub Repository

1. Go to [https://github.com/new](https://github.com/new)
2. Name your repository (e.g., `deep-purple-blue-omarchy`)
3. Add a description: "A deep blue and purple theme for Omarchy/Hyprland"
4. Keep it **Public** (so others can use it)
5. **DO NOT** initialize with README, .gitignore, or license (we already have these)
6. Click "Create repository"

### 2. Push Your Theme

GitHub will show you commands. Use these:

```bash
cd ~/.config/omarchy/themes/deep-purple-blue

# Add the remote repository (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/deep-purple-blue-omarchy.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### 3. Update README

After pushing, update the installation commands in README.md:

Replace `YOUR_USERNAME` with your actual GitHub username in these lines:
- Line 73: `git clone https://github.com/YOUR_USERNAME/deep-purple-blue-omarchy.git ...`
- Line 84: `git clone https://github.com/YOUR_USERNAME/deep-purple-blue-omarchy.git ...`

Then commit and push the changes:

```bash
# Edit README.md and replace YOUR_USERNAME
git add README.md
git commit -m "docs: update installation URLs with actual username"
git push
```

### 4. Add Screenshots (Optional but Recommended)

Follow the instructions in [SCREENSHOTS.md](SCREENSHOTS.md) to add screenshots of your theme.

### 5. Add Topics to Your Repository

On GitHub, add these topics to help people find your theme:
- `hyprland`
- `hyprland-theme`
- `omarchy`
- `omarchy-theme`
- `wayland`
- `linux-theme`
- `purple-theme`
- `blue-theme`

Go to your repository → Click the gear icon next to "About" → Add topics

### 6. Share Your Theme

Once published, you can share your theme:
- Post on [r/unixporn](https://reddit.com/r/unixporn)
- Share in Hyprland Discord
- Add to [awesome-hyprland](https://github.com/hyprland-community/awesome-hyprland)

## Updating Your Theme

When you make changes:

```bash
cd ~/.config/omarchy/themes/deep-purple-blue

# See what changed
git status

# Add changes
git add .

# Commit with a descriptive message
git commit -m "fix: adjust waybar colors for better contrast"

# Push to GitHub
git push
```

## Example Repository URL

Once published, users can install with:

```bash
git clone https://github.com/YOUR_USERNAME/deep-purple-blue-omarchy.git \
  ~/.config/omarchy/themes/deep-purple-blue

cd ~/.config/omarchy/themes/deep-purple-blue
./apply-theme.sh
```

## Optional: Create a Release

Creating releases helps users track versions:

1. Go to your repository on GitHub
2. Click "Releases" → "Create a new release"
3. Tag: `v1.0.0`
4. Title: `Initial Release - v1.0.0`
5. Description: List the features
6. Click "Publish release"

## Need Help?

- [GitHub Documentation](https://docs.github.com)
- [Git Basics](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics)

---

**Remember to delete this file before pushing, or keep it if you want to help other theme creators!**

```bash
# Optional: Remove this file
git rm GITHUB-SETUP.md
git commit -m "docs: remove setup instructions"
git push
```
