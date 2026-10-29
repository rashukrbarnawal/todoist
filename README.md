# 📝 Todoist Clone - React Application

[![CI](https://github.com/rashukrbarnawal/todoist/actions/workflows/ci.yml/badge.svg)](https://github.com/rashukrbarnawal/todoist/actions/workflows/ci.yml)
[![Test & Coverage](https://github.com/rashukrbarnawal/todoist/actions/workflows/test.yml/badge.svg)](https://github.com/rashukrbarnawal/todoist/actions/workflows/test.yml)
[![Build](https://github.com/rashukrbarnawal/todoist/actions/workflows/build.yml/badge.svg)](https://github.com/rashukrbarnawal/todoist/actions/workflows/build.yml)
[![Linting](https://github.com/rashukrbarnawal/todoist/actions/workflows/lint.yml/badge.svg)](https://github.com/rashukrbarnawal/todoist/actions/workflows/lint.yml)

A feature-rich **Todoist clone** built with React, demonstrating modern web development best practices including state management, Firebase integration, and comprehensive testing.

![Preview](todoist-preview.png?raw=true)

## 🎯 About This Project

This application is a hands-on learning project that recreates the core functionality of Todoist. It was built using **create-react-app** and showcases how to build a real-world application using React's modern features and best practices.

🎓 **Part of the CognitiveSurge Tutorial Series** - Learn how to build this from scratch at [CognitiveSurge YouTube Channel](http://bit.ly/CognitiveSurge)

## ✨ Key Features

- **Project Management** - Create, organize, and manage multiple projects
- **Task Management** - Add, edit, delete, and complete tasks
- **Dark Mode** - Toggle dark mode by clicking the Pizza icon (🍕) in the top right
- **Firebase Integration** - Real-time data synchronization with Firebase backend
- **Custom Hooks** - Reusable React hooks for state management
- **Context API** - Global state management for projects and selected projects
- **SCSS Styling** - Professional, maintainable styles
- **Comprehensive Testing** - Jest and React Testing Library test suite with 90%+ coverage

## 🛠️ Tech Stack

- **Frontend**: React 16.13+ with Hooks
- **State Management**: React Context API + Custom Hooks
- **Backend/Database**: Firebase
- **Styling**: SCSS
- **Testing**: React Testing Library + Jest
- **Code Quality**: ESLint + Prettier
- **Build Tool**: Create React App

### Dependencies

```json
{
  "firebase": "^7.15.2",
  "moment": "^2.27.0",
  "react": "^16.13.1",
  "react-dom": "^16.13.1",
  "react-icons": "^3.10.0"
}
```

## 🚀 Getting Started

### Prerequisites

- Node.js (v12 or higher)
- npm or yarn
- Firebase account

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/rashukrbarnawal/todoist.git
   cd todoist
   ```

2. **Install dependencies**
   ```bash
   npm install
   # or
   yarn install
   ```

3. **Configure Firebase**
   - Copy `src/firebase.js.example` to `src/firebase.js`
   - Add your Firebase configuration credentials
   ```bash
   cp src/firebase.js.example src/firebase.js
   ```
   - Update the file with your Firebase project details

4. **Start the development server**
   ```bash
   npm start
   # or
   yarn start
   ```

   The app will open at `http://localhost:3000`

## 📚 Available Scripts

In the project directory, you can run:

### `npm start` or `yarn start`
Runs the app in development mode. Open [http://localhost:3000](http://localhost:3000) to view it in the browser. The page will reload when you make changes.

### `npm test` or `yarn test`
Launches the test runner in interactive watch mode. Tests are run with Jest and React Testing Library.

### `npm run build` or `yarn build`
Builds the app for production to the `build` folder. It correctly bundles React in production mode and optimizes the build for the best performance.

## 📁 Project Structure

```
src/
├── components/           # React components
│   ├── AddProject.js
│   ├── AddTask.js
│   ├── Checkbox.js
│   ├── IndividualProject.js
│   ├── ProjectOverlay.js
│   ├── Projects.js
│   ├── TaskDate.js
│   ├── Tasks.js
│   └── layout/
├── context/              # Context API setup
│   ├── projects-context.js
│   └── selected-project-context.js
├── hooks/                # Custom React hooks
├── helpers/              # Utility functions
├── constants/            # App constants
├── __tests__/            # Test files
├── App.js                # Main app component
├── App.scss              # Global styles
├── firebase.js           # Firebase configuration
└── index.js              # Entry point
```

## 🧪 Testing

The project includes comprehensive test coverage with Jest and React Testing Library:

```bash
npm test
```

Test files are located in `src/__tests__/` and cover:
- Components rendering and interactions
- Context functionality
- User workflows
- Edge cases

**Coverage Threshold**: 90% for branches, functions, lines, and statements

## 🤝 Contributing

Contributions are **highly encouraged**! Here are some areas where help is needed:

### 🎯 Current Contribution Opportunities

- **♿ Accessibility Improvements** - Add ARIA labels, keyboard navigation, and screen reader support
- **🐛 Bug Fixes** - Report and fix any issues
- **✨ New Features** - Enhance existing functionality
- **📖 Documentation** - Improve docs and code comments
- **🧪 Test Coverage** - Expand the test suite
- **🎨 UI/UX Improvements** - Enhance the user interface

### How to Contribute

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

Please ensure your code follows the existing style guide and includes appropriate tests.

## 📋 Code Quality Standards

- **ESLint**: Airbnb configuration with Prettier integration
- **Prettier**: Automatic code formatting
- **Jest Coverage**: Minimum 90% coverage requirement
- **Testing Library**: Best practices for testing React components

## 🔄 Continuous Integration

This project uses GitHub Actions for automated CI/CD workflows:

### Workflows

- **CI (Comprehensive)** - Runs lint, test, and build jobs on every push and PR
- **Test & Coverage** - Executes Jest tests with coverage reporting (90% threshold)
- **Linting** - Validates code with ESLint and Prettier
- **Build** - Ensures the app builds successfully and archives artifacts

All workflows run on Node.js 12.x and 14.x to ensure compatibility. View the workflow configurations in `.github/workflows/`.

## 🐛 Known Issues & Roadmap

- Accessibility features are pending (see Contributing section)
- Consider implementing additional features like due dates, recurring tasks, and notifications

## 📖 Learning Resources

- [React Documentation](https://react.dev)
- [Firebase Documentation](https://firebase.google.com/docs)
- [React Testing Library](https://testing-library.com/react)
- [CognitiveSurge YouTube Channel](http://bit.ly/CognitiveSurge)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE.txt](LICENSE.txt) file for details.

## 👨‍💼 Author

**Rashu Krbarnawal**

## 🙏 Acknowledgments

- Created as part of the CognitiveSurge tutorial series
- Built with Create React App
- Thanks to all contributors and supporters

---

**Happy Coding!** 🚀

For questions or support, feel free to open an issue on GitHub or reach out through the CognitiveSurge channel.
