# GitHub Copilot Quick Reference

## Essential Commands

| Action | Shortcut | Command |
|--------|----------|---------|
| Accept suggestion | `Tab` | - |
| Dismiss suggestion | `Esc` | - |
| Next suggestion | `Alt + ]` | `github.copilot.nextInlineSuggestion` |
| Previous suggestion | `Alt + [` | `github.copilot.previousInlineSuggestion` |
| Open chat | `Ctrl + Shift + I` | `github.copilot.generate` |
| Explain code | `Ctrl + K, Ctrl + I` | `github.copilot.interactiveEditor.explain` |

## Chat Commands

| Command | Purpose | Example |
|---------|---------|---------|
| `/explain` | Understand code | `/explain this regex pattern` |
| `/fix` | Debug issues | `/fix TypeError: cannot read property` |
| `/optimize` | Improve performance | `/optimize this database query` |
| `/tests` | Generate tests | `/tests for getUserData function` |
| `/doc` | Create documentation | `/doc for this API endpoint` |
| `/refactor` | Restructure code | `/refactor to use modern ES6` |

## Best Practices

### ✅ Do
- Write descriptive comments before complex code
- Use meaningful variable and function names
- Keep related files in the same directory
- Provide context in your questions
- Review and test all suggestions
- Use type annotations when available

### ❌ Don't
- Accept suggestions blindly
- Use vague prompts
- Ignore error handling
- Skip code reviews
- Rely on Copilot for security decisions
- Forget to add your own comments

## Effective Prompting

### Good Prompts
```javascript
// Create a debounced search function that waits 300ms
// Should cancel previous calls and return a promise

// Validate email format using regex
// Return true for valid emails, false otherwise

// Sort array of objects by date property (newest first)
// Handle null/undefined dates gracefully
```

### Better Context
```python
# Current user authentication system uses JWT tokens
# Need function to refresh expired tokens automatically
# Should handle network errors and retry logic
def refresh_auth_token():
```

## Common Issues & Solutions

### Low-Quality Suggestions
**Problem**: Copilot suggestions don't match your needs
**Solutions**:
- Add more context comments
- Use better variable names
- Include example inputs/outputs
- Break large functions into smaller ones

### Security Concerns
**Problem**: Suggestions might include vulnerabilities
**Solutions**:
- Always review security-critical code
- Use static analysis tools
- Follow security best practices
- Don't trust suggestions for authentication/authorization

### Performance Issues
**Problem**: Copilot slowing down VS Code
**Solutions**:
- Reduce `listCount` in settings
- Disable for large files
- Close unused tabs
- Update VS Code and extensions

## Language-Specific Tips

### Python
- Use type hints: `def process_data(items: List[str]) -> Dict[str, int]:`
- Add docstrings for complex functions
- Follow PEP 8 naming conventions

### JavaScript/TypeScript  
- Use JSDoc comments: `/** @param {string} name - User name */`
- Prefer `const` and `let` over `var`
- Use descriptive function names

### Java
- Follow camelCase conventions
- Use meaningful class and method names
- Add proper exception handling

### C#
- Use PascalCase for public members
- Add XML documentation comments
- Follow .NET naming guidelines

## Troubleshooting

### Copilot Not Working
1. Check GitHub Copilot subscription status
2. Verify VS Code extension is enabled
3. Restart VS Code
4. Check network connectivity
5. Update extensions

### No Suggestions Appearing
1. Check if Copilot is enabled for file type
2. Verify `editor.inlineSuggest.enabled: true`
3. Look for conflicting extensions
4. Clear VS Code workspace cache
5. Check file size (very large files may be skipped)