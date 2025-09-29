# Copilot Configuration Templates

## Template Files for New Projects

### Basic .copilot-instructions.md Template
```markdown
# Project: [PROJECT_NAME]

## Overview
[Brief description of what this project does]

## Architecture
- **Language**: [Primary language/framework]
- **Structure**: [Key directories and their purposes]
- **Dependencies**: [Main libraries/frameworks used]

## Coding Standards
- Follow [specific style guide/conventions]
- Use [preferred patterns/architectures]
- Test coverage minimum: [percentage]
- Documentation required for [scope]

## Context
- **Domain**: [Business domain/problem space]
- **Users**: [Target audience]
- **Constraints**: [Performance, compatibility, etc.]
- **Integrations**: [External systems/APIs]

## Preferences
- Prefer [language features/patterns]
- Avoid [anti-patterns/deprecated features]
- Use [specific libraries] for [functionality]
- Format code using [formatter configuration]
```

### VS Code Workspace Settings Template
```json
{
  "folders": [
    {
      "name": "Project Root",
      "path": "."
    }
  ],
  "settings": {
    "github.copilot.enable": true,
    "github.copilot.chat.welcomeMessage": "always",
    "editor.inlineSuggest.enabled": true,
    "editor.formatOnSave": true,
    "editor.codeActionsOnSave": {
      "source.organizeImports": true,
      "source.fixAll": true
    }
  },
  "extensions": {
    "recommendations": [
      "github.copilot",
      "github.copilot-chat"
    ]
  }
}
```

### Project-Specific Instructions Template
```markdown
# [PROJECT_NAME] - Copilot Instructions

## Project Context
**Type**: [Web App/Library/CLI Tool/etc.]
**Framework**: [React/Django/Express/etc.]
**Database**: [PostgreSQL/MongoDB/etc.]
**Deployment**: [Docker/AWS/Vercel/etc.]

## Code Organization
```
src/
├── components/     # Reusable UI components
├── services/      # Business logic and API calls
├── utils/         # Helper functions
├── types/         # Type definitions
└── tests/         # Test files
```

## Development Guidelines
- **Components**: Use functional components with hooks
- **Styling**: Use [CSS Modules/Tailwind/Styled Components]
- **State**: Manage state with [Context/Redux/Zustand]
- **API**: Use [REST/GraphQL] with [Axios/Fetch/tRPC]
- **Testing**: Write tests with [Jest/Vitest/Cypress]

## Specific Patterns
- **Error Handling**: Use try/catch with proper logging
- **Async**: Prefer async/await over promises
- **Types**: Use strict TypeScript with no 'any'
- **Imports**: Use absolute imports from 'src/'

## Business Logic
[Add domain-specific context about the application's purpose,
key entities, business rules, and user workflows]
```

## Language-Specific Templates

### Python Project Template
```markdown
# Python Project Guidelines

## Standards
- **Style**: Follow PEP 8 strictly
- **Type Hints**: Required for all function signatures
- **Docstrings**: Use Google style docstrings
- **Testing**: Use pytest with >90% coverage

## Structure
- Use dataclasses for data models
- Prefer pathlib over os.path
- Use context managers for resources
- Handle exceptions explicitly

## Dependencies
- **Web**: FastAPI/Django
- **Database**: SQLAlchemy/Django ORM  
- **Testing**: pytest, pytest-cov
- **Linting**: black, flake8, mypy
```

### JavaScript/TypeScript Template
```markdown
# JavaScript/TypeScript Guidelines

## Modern Standards
- **ES2022+**: Use latest JavaScript features
- **TypeScript**: Strict mode enabled
- **Modules**: Use ES6 imports/exports
- **Async**: Prefer async/await

## Patterns
- Use functional programming concepts
- Prefer immutable operations
- Use proper error boundaries
- Implement proper loading states

## Libraries
- **UI**: React 18+ with hooks
- **Routing**: React Router v6
- **HTTP**: Axios or fetch
- **Testing**: Jest + React Testing Library
```

### React Component Template
```typescript
// Template for new React components
interface [ComponentName]Props {
  // Define props with proper types
}

export const [ComponentName]: React.FC<[ComponentName]Props> = ({
  // Destructure props
}) => {
  // Component logic here
  
  return (
    <div>
      {/* Component JSX */}
    </div>
  );
};

// Add display name for debugging
[ComponentName].displayName = '[ComponentName]';
```

## Setup Instructions

1. **Copy Templates**: Copy relevant templates to your project
2. **Customize**: Replace placeholders with project-specific information
3. **Configure VS Code**: Apply workspace settings
4. **Test**: Verify Copilot suggestions match your preferences
5. **Iterate**: Refine instructions based on suggestion quality

## Maintenance

- **Review Monthly**: Update instructions as project evolves
- **Team Sync**: Ensure all team members use same configuration
- **Version Control**: Track changes to Copilot instructions
- **Feedback**: Collect team feedback on suggestion quality