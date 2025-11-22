# Contributing to Deep Blue & Purple Theme

Thank you for your interest in contributing! This document provides guidelines for contributing to this theme.

## Ways to Contribute

### 1. Report Bugs

If you find any issues with the theme:
- Check if the issue already exists in the Issues tab
- Create a new issue with:
  - Clear description of the problem
  - Steps to reproduce
  - Screenshots if applicable
  - Your system information (Hyprland version, etc.)

### 2. Suggest Features

Have ideas for improvements?
- Open an issue with the "enhancement" label
- Describe the feature and its benefits
- Include mockups or examples if possible

### 3. Submit Pull Requests

#### Color Adjustments
If you want to propose color changes:
1. Fork the repository
2. Create a new branch: `git checkout -b feature/color-adjustment`
3. Make your changes
4. Test thoroughly
5. Submit a PR with before/after screenshots

#### New Application Support
To add support for a new application:
1. Create the configuration file (e.g., `newapp.conf`)
2. Use the existing color scheme
3. Test the configuration
4. Update README.md to list the new application
5. Submit a PR with screenshots

#### Bug Fixes
1. Fork and create a branch: `git checkout -b fix/description`
2. Fix the issue
3. Test the fix
4. Submit a PR explaining the fix

## Development Guidelines

### Color Consistency

When adding or modifying colors, use these base colors:

```css
Primary Background:   #0d0a1a
Secondary Background: #1a0f2e
Tertiary Background:  #2d1b69
Primary Foreground:   #e0d4ff
Accent Purple:        #b794f6
Accent Blue:          #7b68ee
```

### File Naming

- Use lowercase with hyphens for new files
- Follow existing naming conventions
- Add comments explaining non-obvious configurations

### Testing

Before submitting:
- [ ] Test on a fresh Hyprland installation if possible
- [ ] Verify colors are consistent across all applications
- [ ] Check that no syntax errors exist
- [ ] Test the apply-theme.sh script
- [ ] Update documentation if needed

### Commit Messages

Use clear, descriptive commit messages:
- `feat: add support for application X`
- `fix: correct color in waybar.css`
- `docs: update installation instructions`
- `style: adjust border colors for consistency`

## Code of Conduct

- Be respectful and inclusive
- Provide constructive feedback
- Focus on the theme, not personal preferences
- Help others learn and contribute

## Questions?

Feel free to open an issue with the "question" label if you need help or clarification.

## License

By contributing, you agree that your contributions will be licensed under the MIT License.
