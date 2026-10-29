# API Documentation

This document outlines the key APIs, hooks, and utilities exported by the Todoist Clone application.

## 📦 Exported Modules

### Context API

#### `ProjectsContext`

Global state context for managing all projects and tasks.

**Location:** `src/context/projects-context.js`

**State Shape:**
```javascript
{
  projects: [
    {
      docId: string,
      name: string,
      userId: string,
      projectId: string,
      active: boolean,
      favourite: boolean
    }
  ]
}
```

**Usage:**
```javascript
import { ProjectsContext } from './context';

function MyComponent() {
  const { projects } = useContext(ProjectsContext);
  return <div>{projects.map(p => <p key={p.docId}>{p.name}</p>)}</div>;
}
```

#### `SelectedProjectContext`

Context for tracking the currently selected project.

**Location:** `src/context/selected-project-context.js`

**State Shape:**
```javascript
{
  selectedProject: string, // project ID
}
```

**Usage:**
```javascript
import { SelectedProjectContext } from './context';

function MyComponent() {
  const { selectedProject, setSelectedProject } = useContext(SelectedProjectContext);
  return <button onClick={() => setSelectedProject('new-id')}>Select</button>;
}
```

### Custom Hooks

Hooks provide reusable stateful logic for components.

**Location:** `src/hooks/index.js`

#### Available Hooks

Common custom hooks available:

```javascript
// Example exports (check src/hooks/index.js for actual exports)
export const useProjects = () => { /* ... */ };
export const useTasks = () => { /* ... */ };
export const useProject = (projectId) => { /* ... */ };
```

**Usage:**
```javascript
import { useProjects } from '../hooks';

function ProjectList() {
  const { projects, addProject, deleteProject } = useProjects();
  return (
    <div>
      {projects.map(project => (
        <div key={project.docId}>
          <h3>{project.name}</h3>
          <button onClick={() => deleteProject(project.docId)}>Delete</button>
        </div>
      ))}
    </div>
  );
}
```

### Helper Functions

Utility functions for common operations.

**Location:** `src/helpers/index.js`

#### Available Helpers

```javascript
// Common helpers (check src/helpers/index.js for actual functions)
export const formatDate = (date) => { /* ... */ };
export const generateId = () => { /* ... */ };
export const validateProject = (project) => { /* ... */ };
```

**Usage:**
```javascript
import { formatDate, generateId } from '../helpers';

const newProject = {
  id: generateId(),
  createdAt: formatDate(new Date())
};
```

### Constants

Application-wide constants.

**Location:** `src/constants/index.js`

#### Available Constants

```javascript
// Example constants
export const PROJECT_COLORS = ['#FF6B6B', '#4ECDC4', '#45B7D1'];
export const TASK_STATUS = {
  PENDING: 'pending',
  COMPLETED: 'completed',
  ARCHIVED: 'archived'
};
export const API_ENDPOINTS = { /* ... */ };
```

**Usage:**
```javascript
import { PROJECT_COLORS, TASK_STATUS } from '../constants';

const newProject = {
  color: PROJECT_COLORS[0],
  status: TASK_STATUS.PENDING
};
```

## 🧩 Component API

### Main Components

#### `App`

Main application component - renders the entire application.

**Props:** None (uses Context)

**File:** `src/App.js`

```javascript
<App />
```

#### `Projects`

Displays the list of projects.

**Props:**
```javascript
{
  projects?: Array<Project>,
  onProjectSelect?: (projectId: string) => void
}
```

**File:** `src/components/Projects.js`

```javascript
<Projects 
  projects={projects}
  onProjectSelect={handleSelect}
/>
```

#### `Tasks`

Displays tasks for the selected project.

**Props:**
```javascript
{
  tasks?: Array<Task>,
  projectId?: string,
  onTaskComplete?: (taskId: string) => void,
  onTaskDelete?: (taskId: string) => void
}
```

**File:** `src/components/Tasks.js`

```javascript
<Tasks 
  tasks={filteredTasks}
  projectId={selectedProject}
  onTaskComplete={markComplete}
/>
```

#### `AddProject`

Form component for creating new projects.

**Props:**
```javascript
{
  onProjectAdd?: (project: Project) => void
}
```

**File:** `src/components/AddProject.js`

```javascript
<AddProject onProjectAdd={handleAdd} />
```

#### `AddTask`

Form component for creating new tasks.

**Props:**
```javascript
{
  projectId: string,
  onTaskAdd?: (task: Task) => void
}
```

**File:** `src/components/AddTask.js`

```javascript
<AddTask projectId={selectedProject} onTaskAdd={handleAdd} />
```

#### `Checkbox`

Custom checkbox component.

**Props:**
```javascript
{
  id: string,
  label?: string,
  checked?: boolean,
  onChange?: (checked: boolean) => void,
  disabled?: boolean
}
```

**File:** `src/components/Checkbox.js`

```javascript
<Checkbox 
  id="task-1"
  label="Complete task"
  checked={isComplete}
  onChange={handleChange}
/>
```

#### `TaskDate`

Component for displaying/selecting task dates.

**Props:**
```javascript
{
  date?: Date | string,
  onChange?: (date: Date) => void
}
```

**File:** `src/components/TaskDate.js`

```javascript
<TaskDate 
  date={dueDate}
  onChange={handleDateChange}
/>
```

### Data Models

#### Project Model

```javascript
{
  docId: string,           // Firebase document ID
  projectId: string,       // Unique project identifier
  userId: string,          // Owner's user ID
  name: string,            // Project name
  colour: string,          // Project color (hex)
  active: boolean,         // Is project active
  favourite: boolean,      // Is project favorited
  createdAt: timestamp,    // Creation date
  updatedAt: timestamp     // Last update date
}
```

#### Task Model

```javascript
{
  id: string,              // Task identifier
  taskId: string,          // Unique task ID
  projectId: string,       // Parent project ID
  title: string,           // Task title/description
  completed: boolean,      // Completion status
  date: string,            // Due date (ISO format)
  priority: number,        // Task priority
  createdAt: timestamp,    // Creation date
  updatedAt: timestamp     // Last update date
}
```

## 🔄 Firebase Integration

### Database Structure

```
users/
└── {userId}/
    └── projects/
        └── {projectId}/
            ├── name: string
            ├── colour: string
            ├── active: boolean
            ├── favourite: boolean
            └── tasks/
                └── {taskId}/
                    ├── title: string
                    ├── completed: boolean
                    ├── date: string
```

### Authentication

The app uses Firebase Authentication for user management:

```javascript
// Sign up
firebase.auth().createUserWithEmailAndPassword(email, password)

// Sign in
firebase.auth().signInWithEmailAndPassword(email, password)

// Sign out
firebase.auth().signOut()

// Get current user
const user = firebase.auth().currentUser
```

## 🧪 Testing Utilities

### Test Setup

Jest and React Testing Library are configured for component and unit tests.

**Configuration:** See `package.json` and `.eslintrc.json`

**Example Test:**
```javascript
import { render, screen } from '@testing-library/react';
import { ProjectsContext } from '../context';
import Projects from './Projects';

test('renders projects', () => {
  const mockProjects = [{ docId: '1', name: 'Test' }];
  
  render(
    <ProjectsContext.Provider value={{ projects: mockProjects }}>
      <Projects />
    </ProjectsContext.Provider>
  );
  
  expect(screen.getByText('Test')).toBeInTheDocument();
});
```

## 📚 Environment Variables

Configure via `.env` file:

```
REACT_APP_FIREBASE_API_KEY=your_api_key
REACT_APP_FIREBASE_AUTH_DOMAIN=your_auth_domain
REACT_APP_FIREBASE_DATABASE_URL=your_database_url
REACT_APP_FIREBASE_PROJECT_ID=your_project_id
REACT_APP_FIREBASE_STORAGE_BUCKET=your_storage_bucket
REACT_APP_FIREBASE_MESSAGING_SENDER_ID=your_sender_id
REACT_APP_FIREBASE_APP_ID=your_app_id
```

## 🔗 Related Documentation

- [ARCHITECTURE.md](ARCHITECTURE.md) - System architecture
- [CONTRIBUTING.md](CONTRIBUTING.md) - Contribution guidelines
- [README.md](README.md) - Project overview
