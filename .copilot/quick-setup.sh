# Quick Project Setup Script

#!/bin/bash

# Quick script to copy Copilot configuration to new projects
# Usage: ./quick-setup.sh /path/to/new/project

PROJECT_PATH=${1:-$(pwd)}
COPILOT_GLOBAL_DIR="$HOME/.config/copilot-global"

echo "🚀 Setting up Copilot for project at: $PROJECT_PATH"

# Copy the .copilot folder template
if [ -d "$PROJECT_PATH/.copilot" ]; then
    echo "⚠️  .copilot directory already exists. Creating backup..."
    mv "$PROJECT_PATH/.copilot" "$PROJECT_PATH/.copilot.backup.$(date +%Y%m%d_%H%M%S)"
fi

# Copy the template folder
cp -r "$(dirname "$0")/.copilot" "$PROJECT_PATH/"

echo "✅ Copilot configuration copied to project!"
echo ""
echo "📝 Next steps:"
echo "   1. Edit $PROJECT_PATH/.copilot/instructions.md for project-specific context"
echo "   2. Update templates in $PROJECT_PATH/.copilot/templates.md if needed"
echo "   3. Global settings are already applied system-wide"
echo ""
echo "💡 Remember: Global instructions are at ~/.copilot-instructions.md"