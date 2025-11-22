# Publishing with GitHub Desktop

This is the easiest way to publish your theme to GitHub!

## Step-by-Step Guide

### Step 1: Open GitHub Desktop

Launch GitHub Desktop on your computer.

### Step 2: Add Your Repository

1. In GitHub Desktop, click **File** → **Add Local Repository**
2. Click **Choose...** button
3. Navigate to: `~/.config/omarchy/themes/deep-purple-blue`
   - Or paste this path: `/home/djcoffey/.config/omarchy/themes/deep-purple-blue`
4. Click **Add Repository**

GitHub Desktop should now show your repository with all the committed files.

### Step 3: Publish to GitHub

1. Look for the **Publish repository** button in the top bar
2. Click it
3. A dialog will appear:
   - **Name**: `deep-purple-blue-omarchy` (or your preference)
   - **Description**: "A deep blue and purple theme for Omarchy/Hyprland"
   - **Keep this code private**: Make sure this is **UNCHECKED** (so others can use your theme)
   - **Organization**: Leave as "None" (unless you want it under an org)
4. Click **Publish Repository**

That's it! GitHub Desktop will:
- Create the repository on GitHub
- Push all your files
- Set up the remote connection

### Step 4: View on GitHub

1. In GitHub Desktop, click **Repository** → **View on GitHub**
2. Your browser will open showing your new repository!

### Step 5: Update the README

Now that your repo is published, update the README with your actual GitHub username:

1. Open `README.md` in your favorite text editor
2. Find these lines (around line 73 and 84):
   ```
   git clone https://github.com/YOUR_USERNAME/deep-purple-blue-omarchy.git
   ```
3. Replace `YOUR_USERNAME` with your actual GitHub username
4. Save the file

### Step 6: Commit and Push the Update

Back in GitHub Desktop:
1. You should see `README.md` in the "Changes" list
2. At the bottom left, add a commit message: `docs: update installation URLs`
3. Click **Commit to main**
4. Click **Push origin** (top right)

Done! Your theme is now published and ready to share!

## Making Future Updates

When you make changes to your theme:

1. Edit your theme files
2. Open GitHub Desktop
3. It will show your changes in the left panel
4. Write a summary of what you changed
5. Click **Commit to main**
6. Click **Push origin**

## Adding Screenshots

After you take screenshots (see SCREENSHOTS.md):

1. Add your screenshot files to the theme directory
2. GitHub Desktop will show them as new files
3. Commit with message: `docs: add screenshots`
4. Push to GitHub

## Your Repository URL

Once published, your theme will be at:
```
https://github.com/YOUR_USERNAME/deep-purple-blue-omarchy
```

Users can install it with:
```bash
git clone https://github.com/YOUR_USERNAME/deep-purple-blue-omarchy.git \
  ~/.config/omarchy/themes/deep-purple-blue

cd ~/.config/omarchy/themes/deep-purple-blue
./apply-theme.sh
```

## Troubleshooting

### "Authentication Failed"
- Make sure you're logged into GitHub Desktop
- Go to **File** → **Options** → **Accounts** to sign in

### "Repository Not Found"
- The path should be: `/home/djcoffey/.config/omarchy/themes/deep-purple-blue`
- Make sure you're in the correct directory

### "No Changes to Commit"
- All files are already committed! Just use "Publish repository"

---

Need help? Open an issue on GitHub or check the [GitHub Desktop Documentation](https://docs.github.com/en/desktop).
