# VS Code GitHub Copilot Settings

## Recommended VS Code Settings

Add these settings to your VS Code `settings.json` file for optimal Copilot experience:

```json
{
  // GitHub Copilot Settings
  "github.copilot.enable": true,
  "github.copilot.editor.enableAutoCompletions": true,
  "github.copilot.editor.enableCodeActions": true,
  "github.copilot.chat.welcomeMessage": "default",
  
  // Enhanced Suggestions
  "github.copilot.advanced": {
    "listCount": 10,
    "inlineSuggestCount": 3
  },
  
  // Language-specific enablement
  "github.copilot.enabledLanguages": {
    "*": true,
    "plaintext": false,
    "markdown": true,
    "scminput": false
  },
  
  // Editor settings that work well with Copilot
  "editor.inlineSuggest.enabled": true,
  "editor.inlineSuggest.showToolbar": "always",
  "editor.suggestSelection": "first",
  "editor.tabCompletion": "on",
  "editor.wordBasedSuggestions": "matchingDocuments",
  
  // Code formatting for better suggestions
  "editor.formatOnSave": true,
  "editor.formatOnPaste": true,
  "editor.codeActionsOnSave": {
    "source.organizeImports": true,
    "source.fixAll": true
  },
  
  // Improve context understanding
  "editor.minimap.enabled": true,
  "editor.breadcrumbs.enabled": true,
  "explorer.fileNesting.enabled": true,
  
  // Terminal settings for better integration
  "terminal.integrated.enableMultiLinePasteWarning": false,
  "terminal.integrated.commandsToSkipShell": [
    "github.copilot.generate"
  ]
}
```

## Keyboard Shortcuts

Add these to your `keybindings.json` for faster Copilot workflows:

```json
[
  {
    "key": "ctrl+shift+i",
    "command": "github.copilot.generate",
    "when": "editorTextFocus"
  },
  {
    "key": "ctrl+shift+/",
    "command": "github.copilot.toggleInlineSuggestion",
    "when": "editorTextFocus"
  },
  {
    "key": "alt+\\",
    "command": "github.copilot.acceptInlineSuggestion",
    "when": "inlineSuggestionVisible"
  },
  {
    "key": "alt+]",
    "command": "github.copilot.nextInlineSuggestion",
    "when": "inlineSuggestionVisible"
  },
  {
    "key": "alt+[",
    "command": "github.copilot.previousInlineSuggestion", 
    "when": "inlineSuggestionVisible"
  },
  {
    "key": "ctrl+k ctrl+i",
    "command": "github.copilot.interactiveEditor.explain"
  }
]
```

## Workspace Configuration

Create a `.vscode/settings.json` in your project root:

```json
{
  "github.copilot.enable": true,
  "github.copilot.chat.welcomeMessage": "always",
  "files.associations": {
    "*.md": "markdown",
    ".copilot/*": "markdown"
  },
  "editor.rulers": [80, 120],
  "editor.wordWrap": "wordWrapColumn",
  "editor.wordWrapColumn": 120
}
```

## Extensions That Enhance Copilot

Install these VS Code extensions for better Copilot integration:

```json
{
  "recommendations": [
    "github.copilot",
    "github.copilot-chat",
    "ms-vscode.vscode-json",
    "esbenp.prettier-vscode",
    "ms-python.python",
    "ms-python.pylint",
    "bradlc.vscode-tailwindcss",
    "ms-vscode.live-server"
  ]
}
```

## File Patterns for Better Context

Add to `.vscode/settings.json` to help Copilot understand your project structure:

```json
{
  "files.exclude": {
    "**/node_modules": true,
    "**/.git": true,
    "**/.DS_Store": true,
    "**/dist": true,
    "**/build": true
  },
  "search.exclude": {
    "**/node_modules": true,
    "**/dist": true,
    "**/build": true,
    "**/.venv": true
  },
  "github.copilot.advanced": {
    "debug.overrideEngine": "codex",
    "debug.testOverrideProxyUrl": "",
    "debug.overrideProxyUrl": ""
  }
}
```

## Tips for Better Suggestions

1. **File Structure**: Keep related files in the same directory
2. **Naming**: Use descriptive function and variable names  
3. **Comments**: Add context comments before complex code
4. **Imports**: Keep imports at the top and well-organized
5. **Types**: Use type annotations/hints when available
6. **Tests**: Keep test files near implementation files