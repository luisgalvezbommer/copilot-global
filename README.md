# Global Copilot Setup Instructions

## 🎯 How to Set Up Global Copilot Configuration

This setup provides **system-wide GitHub Copilot optimization** that will improve code quality across all your projects.

## 🚀 One-Time Global Setup

Run this command to apply global Copilot settings:

```bash
~/.config/copilot-global/setup.sh
```

This will:
- ✅ Backup your existing VS Code settings
- ✅ Apply optimized Copilot settings globally
- ✅ Add helpful keyboard shortcuts
- ✅ Create a global instructions file (`~/.copilot-instructions.md`)
- ✅ Configure file exclusions and editor settings for better context

## 📁 For New Projects

**Quick Setup** (copies the .copilot folder):
```bash
# From any existing project with .copilot folder
./.copilot/quick-setup.sh /path/to/new/project

# Or manually copy
cp -r .copilot /path/to/new/project/
```

**Then customize** the project-specific instructions:
1. Edit `.copilot/instructions.md` with your project details
2. Update templates in `.copilot/templates.md` if needed

## 🎛️ What Gets Applied Globally

### VS Code Settings
- **Enhanced Copilot**: Better suggestions with more options
- **Smart Editor**: Auto-format, organize imports, better completions  
- **File Exclusions**: Hides build/cache folders for better context
- **Performance**: Optimized for real-time suggestions

### Keyboard Shortcuts
- `Ctrl+Shift+I`: Open Copilot chat
- `Alt+]` / `Alt+[`: Navigate suggestions
- `Alt+\`: Accept suggestion
- `Ctrl+K Ctrl+I`: Explain code
- `Ctrl+K Ctrl+F`: Fix code
- `Ctrl+K Ctrl+O`: Optimize code

### Global Instructions
File at `~/.copilot-instructions.md` with universal development principles:
- Code quality standards
- Security mindset
- Testing approach
- Modern development practices

## 📋 Directory Structure

```
~/.config/copilot-global/
├── global-instructions.md     # Universal development principles
├── global-vscode-settings.json # VS Code configuration
├── global-keybindings.json   # Keyboard shortcuts
└── setup.sh                  # Installation script

project/.copilot/
├── instructions.md            # Project-specific context
├── templates.md              # Customizable templates
├── prompts.md                # Effective prompts library
├── chat-modes.md             # Chat command reference
├── quick-reference.md        # Essential shortcuts
├── vscode-settings.md        # Additional VS Code tips
└── quick-setup.sh            # Copy to new projects
```

## 🔧 Benefits

### Global Level
- **Consistent Quality**: Same high standards across all projects
- **Better Context**: Optimized file exclusions and editor settings
- **Faster Workflow**: Standardized shortcuts and chat commands
- **Security Focus**: Built-in security considerations

### Project Level  
- **Domain Awareness**: Project-specific context and patterns
- **Framework Knowledge**: Language/framework-specific optimizations
- **Team Consistency**: Shared configuration across team members
- **Easy Onboarding**: Quick setup for new projects

## 📝 Maintenance

### Update Global Settings
```bash
# Edit the global instructions
nano ~/.config/copilot-global/global-instructions.md

# Re-run setup to apply changes
~/.config/copilot-global/setup.sh
```

### Update Project Settings
```bash
# Edit project-specific instructions
nano .copilot/instructions.md
```

## 🆘 Troubleshooting

**Copilot not working?**
1. Check GitHub Copilot subscription
2. Restart VS Code after setup
3. Verify extensions are enabled
4. Check global settings were applied

**Poor suggestions?**
1. Add more context to project instructions
2. Use better variable/function names
3. Add comments explaining intent
4. Check file exclusions are working

**Want to reset?**
```bash
# Restore VS Code settings backup
cp ~/.config/Code/User/settings.json.backup.* ~/.config/Code/User/settings.json
```

This setup gives you **professional-grade Copilot configuration** that works for any programming language or framework, while still allowing project-specific customization.