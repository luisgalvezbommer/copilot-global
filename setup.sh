#!/bin/bash

# Global GitHub Copilot Setup Script
# This script applies global Copilot settings to VS Code

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
VSCODE_USER_DIR="$HOME/.config/Code/User"

echo "🚀 Setting up Global GitHub Copilot Configuration..."

# Create VS Code User directory if it doesn't exist
mkdir -p "$VSCODE_USER_DIR"

# Backup existing settings if they exist
if [ -f "$VSCODE_USER_DIR/settings.json" ]; then
    echo "📋 Backing up existing VS Code settings..."
    cp "$VSCODE_USER_DIR/settings.json" "$VSCODE_USER_DIR/settings.json.backup.$(date +%Y%m%d_%H%M%S)"
fi

if [ -f "$VSCODE_USER_DIR/keybindings.json" ]; then
    echo "⌨️  Backing up existing VS Code keybindings..."
    cp "$VSCODE_USER_DIR/keybindings.json" "$VSCODE_USER_DIR/keybindings.json.backup.$(date +%Y%m%d_%H%M%S)"
fi

# Function to merge JSON files
merge_json_settings() {
    local target_file="$1"
    local source_file="$2"
    
    if [ -f "$target_file" ]; then
        echo "🔧 Merging with existing settings..."
        # Use jq to merge if available, otherwise replace
        if command -v jq &> /dev/null; then
            jq -s '.[0] * .[1]' "$target_file" "$source_file" > "$target_file.tmp"
            mv "$target_file.tmp" "$target_file"
        else
            echo "⚠️  jq not found, replacing settings file entirely..."
            cp "$source_file" "$target_file"
        fi
    else
        echo "📝 Creating new settings file..."
        cp "$source_file" "$target_file"
    fi
}

# Apply global settings
echo "⚙️  Applying global Copilot settings..."
merge_json_settings "$VSCODE_USER_DIR/settings.json" "$SCRIPT_DIR/global-vscode-settings.json"

# Apply global keybindings
echo "⌨️  Applying global Copilot keybindings..."
if [ -f "$VSCODE_USER_DIR/keybindings.json" ]; then
    if command -v jq &> /dev/null; then
        # Clean the existing keybindings file (remove comments) and merge
        grep -v "^//" "$VSCODE_USER_DIR/keybindings.json" | jq -s '.[0] + [.[1][]]' - "$SCRIPT_DIR/global-keybindings.json" > "$VSCODE_USER_DIR/keybindings.json.tmp"
        mv "$VSCODE_USER_DIR/keybindings.json.tmp" "$VSCODE_USER_DIR/keybindings.json"
    else
        echo "⚠️  jq not found, manually appending keybindings..."
        # Remove the closing bracket, add comma, append new bindings
        sed -i '$ s/]//' "$VSCODE_USER_DIR/keybindings.json"
        echo "," >> "$VSCODE_USER_DIR/keybindings.json"
        sed '1d;$d' "$SCRIPT_DIR/global-keybindings.json" >> "$VSCODE_USER_DIR/keybindings.json"
        echo "]" >> "$VSCODE_USER_DIR/keybindings.json"
    fi
else
    cp "$SCRIPT_DIR/global-keybindings.json" "$VSCODE_USER_DIR/keybindings.json"
fi

# Create a symlink to global instructions for easy access
echo "🔗 Creating global instructions symlink..."
ln -sf "$SCRIPT_DIR/global-instructions.md" "$HOME/.copilot-instructions.md"

echo "✅ Global GitHub Copilot configuration applied successfully!"
echo ""
echo "📝 Global instructions are available at: ~/.copilot-instructions.md"
echo "⚙️  VS Code settings updated at: $VSCODE_USER_DIR/settings.json"
echo "⌨️  VS Code keybindings updated at: $VSCODE_USER_DIR/keybindings.json"
echo ""
echo "🔄 Please restart VS Code to apply all changes."
echo ""
echo "💡 To customize for specific projects:"
echo "   1. Copy the .copilot folder from this directory to your project"
echo "   2. Customize the templates in .copilot/templates.md"
echo "   3. Add project-specific instructions"