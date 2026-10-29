# Architecture Overview

This document describes the high-level architecture and design patterns used in the Todoist Clone application.

## 🏗️ Architecture Diagram

```
┌─────────────────────────────────────────────────────┐
│                   React Application                 │
├─────────────────────────────────────────────────────┤
│                                                     │
│  ┌──────────────────────────────────────────┐      │
│  │         Presentation Layer (UI)          │      │
│  │  ├─ App.js (main component)              │      │
│  │  ├─ Projects Component                   │      │
│  │  ├─ Tasks Component                      │      │
│  │  └─ Other UI Components                  │      │
│  └──────────────────────────────────────────┘      │
│              ▲                                       │
│              │ uses                                 │
│  ┌──────────────────────────────────────────┐      │
│  │      State Management Layer               │      │
│  │  ├─ Context API                          │      │
│  │  │  ├─ ProjectsContext                   │      │
│  │  │  └─ SelectedProjectContext            │      │
│  │  ├─ Custom Hooks                         │      │
│  │  │  └─ useProject, useTasks, etc.        │      │
│  │  └─ SCSS Styling                         │      │
│  └──────────────────────────────────────────┘      │
│              ▲                                       │
│              │ reads/writes                         │
│  ┌──────────────────────────────────────────┐      │
│  │       Data Access Layer                  │      │
│  │  ├─ Firebase Integration                 │      │
│  │  ├─ Helpers/Utilities                    │      │
│  │  └─ Constants                            │      │
│  └──────────────────────────────────────────┘      │
│              ▲                                       │
│              │ syncs                                │
│  ┌──────────────────────────────────────────┐      │
│  │      External Services                   │      │
│  │  ├─ Firebase Realtime Database           │      │
│  │  └─ Firebase Authentication              │      │
│  └──────────────────────────────────────────┘      │
│                                                     │
└─────────────────────────────────────────────────────┘
```

## 📁 Directory Structure

```
todoist/
├── public/                      # Static files
│   ├── index.html              # HTML entry point
│   ├── favicon.ico             # App icon
│   └── images/                 # Public images
│
├── src/
│   ├── components/             # React components
│   │   ├── AddProject.js       # Add project form
│   │   ├── AddTask.js          # Add task form
│   │   ├── Checkbox.js         # Custom checkbox
│   │   ├── IndividualProject.js # Project list item
│   │   ├── ProjectOverlay.js   # Project details modal
│   │   ├── Projects.js         # Projects list
│   │   ├── TaskDate.js         # Task date display
│   │   ├── Tasks.js            # Tasks display
│   │   └── layout/             # Layout components
│   │
│   ├── context/                # Context API
│   │   ├── projects-context.js      # Projects state
│   │   ├── selected-project-context.js # Selected project
│   │   └── index.js            # Context exports
│   │
│   ├── hooks/                  # Custom React hooks
│   │   └── index.js            # Hook exports
│   │
│   ├── helpers/                # Utility functions
│   │   └── index.js            # Helper exports
│   │
│   ├── constants/              # App constants
│   │   └── index.js            # Constants
│   │
│   ├── __tests__/              # Test files
│   │   ├── AddProject.spec.js
│   │   ├── AddTask.spec.js
│   │   ├── App.spec.js
│   │   └── ...
│   │
│   ├── App.js                  # Main component
│   ├── App.scss                # Global styles
│   ├── index.js                # React entry point
│   └── firebase.js.example     # Firebase config template
│
├── .env                        # Environment variables
├── .eslintrc.json             # ESLint configuration
├── .prettierrc.json           # Prettier configuration
├── .gitignore                 # Git ignore rules
├── package.json               # Dependencies and scripts
├── README.md                  # Project documentation
└── LICENSE.txt               # MIT License

```

## 🔄 Data Flow

### State Management with Context API

```
┌─────────────────────────────────────────┐
│   ProjectsContext (Global State)        │
│  ├─ projects: []                        │
│  ├─ addProject()                        │
│  ├─ deleteProject()                     │
│  └─ updateProject()                     │
└──────────────┬──────────────────────────┘
               │
         ┌─────▼──────┐
         │ Providers  │
         └─────┬──────┘
               │
    ┌──────────┼──────────┐
    │          │          │
┌───▼──┐  ┌───▼──┐  ┌───▼──┐
│ Comp │  │ Comp │  │ Comp │
└──────┘  └──────┘  └──────┘
```

## 🎣 Custom Hooks

Custom hooks encapsulate logic and promote code reuse:

```javascript
// Example: useProject hook
- Manages project CRUD operations
- Integrates with Context API
- Handles Firebase operations
- Provides clean API to components
```

## 🔌 Firebase Integration

The application uses Firebase for:

1. **Real-time Database** - Stores projects and tasks
   - Automatic sync across devices
   - Real-time updates

2. **Authentication** - User identity management
   - Sign up/Sign in
   - User session management

3. **Data Structure**
   ```
   users/
   ├── {userId}/
   │   ├── projects/
   │   │   └── {projectId}/
   │   │       ├── name
   │   │       ├── color
   │   │       └── tasks/
   │   │           └── {taskId}/
   │   │               ├── title
   │   │               ├── completed
   │   │               └── date
   ```

## 🧪 Testing Strategy

### Test Pyramid

```
        /\
       /  \  E2E Tests (integration flows)
      /────\
     /      \  Component Tests (user interactions)
    /────────\
   /          \ Unit Tests (helpers, utilities)
  /────────────\
```

### Test Coverage

- **Components**: React Testing Library
- **State Management**: Context tests
- **Utilities**: Jest unit tests
- **Target Coverage**: 90%+ for all metrics

## 🎨 Styling Approach

### SCSS Architecture

```
App.scss (global styles)
├─ Variables (colors, fonts, spacing)
├─ Base styles
├─ Component styles (scoped via class naming)
├─ Layout styles
└─ Utility classes
```

### Theming

- **Light Mode** (default)
- **Dark Mode** (toggled via Pizza icon 🍕)
- Theme switching via CSS custom properties or context

## 🚀 Performance Considerations

1. **Component Memoization** - Prevent unnecessary re-renders
2. **Context Splitting** - Separate contexts to avoid unnecessary updates
3. **Lazy Loading** - Code splitting for routes (if added)
4. **Efficient Re-renders** - Proper dependency arrays in hooks

## 🔐 Security

- Firebase security rules protect data
- User authentication required
- Input validation in forms
- XSS protection via React's default behavior

## 🌐 Future Scalability

Potential areas for growth:

1. **Backend Expansion** - Move from Firebase to custom backend
2. **Microservices** - Separate auth, tasks, notifications
3. **State Management** - Redux/Zustand if needed
4. **Real-time Collaboration** - Multi-user editing
5. **Mobile Apps** - React Native implementation

## 📚 Key Principles

1. **Component-Driven** - Reusable, testable components
2. **Separation of Concerns** - Clear responsibility boundaries
3. **DRY (Don't Repeat Yourself)** - Utility functions and hooks
4. **Test Coverage** - High coverage for confidence
5. **Accessibility** - Inclusive design principles
6. **Performance** - Optimized renders and data flow
7. **Maintainability** - Clear code, good documentation

## 🔗 Related Documents

- [README.md](README.md) - Project overview
- [CONTRIBUTING.md](CONTRIBUTING.md) - Contribution guidelines
- [API.md](API.md) - API documentation
- [CHANGELOG.md](CHANGELOG.md) - Version history
