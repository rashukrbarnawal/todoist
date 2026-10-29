# Contributing to Todoist Clone

Thank you for your interest in contributing to this project! We welcome contributions from developers of all skill levels.

## 🎯 How to Contribute

### Reporting Bugs

If you find a bug, please open an issue with:
- Clear, descriptive title
- Detailed description of the bug
- Steps to reproduce the issue
- Expected vs actual behavior
- Your environment (Node version, OS, browser)

### Suggesting Enhancements

Have an idea? Open an issue with the `enhancement` label and describe:
- The enhancement or feature
- Why it would be useful
- Possible implementation approach

### Submitting Code Changes

1. **Fork the repository**
   ```bash
   git clone https://github.com/YOUR_USERNAME/todoist.git
   cd todoist
   ```

2. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   # or
   git checkout -b fix/your-bug-fix
   ```

3. **Install dependencies**
   ```bash
   npm install
   ```

4. **Make your changes**
   - Write clean, readable code
   - Follow the existing code style
   - Add or update tests as needed
   - Update documentation if necessary

5. **Run tests and linting**
   ```bash
   npm test
   npm run lint
   ```

6. **Commit your changes**
   ```bash
   git commit -m "type: description"
   # Examples:
   # git commit -m "feat: add task prioritization"
   # git commit -m "fix: resolve dark mode toggle bug"
   # git commit -m "docs: update installation guide"
   ```

7. **Push to your fork**
   ```bash
   git push origin feature/your-feature-name
   ```

8. **Open a Pull Request**
   - Use a clear, descriptive title
   - Reference any related issues
   - Describe the changes and why they're needed
   - Ensure all tests pass

## 📋 Commit Message Convention

We follow the Conventional Commits standard:

- `feat:` - A new feature
- `fix:` - A bug fix
- `docs:` - Documentation changes
- `style:` - Code style changes (formatting, semicolons, etc.)
- `refactor:` - Code refactoring
- `test:` - Adding or updating tests
- `chore:` - Build process, dependencies, or tooling
- `perf:` - Performance improvements

## 🧪 Testing Guidelines

- Write tests for new features
- Maintain 90%+ code coverage
- Use React Testing Library for component tests
- Test user interactions, not implementation details

```bash
npm test                    # Run all tests
npm test -- --coverage      # Check coverage
```

## 📝 Code Style

We use ESLint and Prettier for code quality:

```bash
npm run lint              # Check for linting errors
npm run lint -- --fix     # Auto-fix issues
npm run format            # Format code with Prettier
```

## 🏗️ Project Structure

The project follows this structure:

```
src/
├── components/      # Reusable React components
├── context/         # Context API setup
├── hooks/           # Custom React hooks
├── helpers/         # Utility functions
├── constants/       # App constants
├── __tests__/       # Test files
└── App.js           # Main component
```

When adding new features:
- Put components in `src/components/`
- Create custom hooks in `src/hooks/`
- Add utilities in `src/helpers/`
- Place tests alongside the component or in `src/__tests__/`

## 🔍 Code Review Process

1. A maintainer will review your PR
2. They may request changes or ask questions
3. Make requested updates and push to your branch
4. Once approved, your PR will be merged

## 🚀 Areas We Need Help With

- **Accessibility (♿)** - Add ARIA labels, keyboard navigation, screen reader support
- **Internationalization (🌍)** - Add multi-language support
- **Performance** - Optimize rendering and bundle size
- **Documentation** - Improve guides and API docs
- **UI/UX** - Design improvements and animations
- **Mobile Responsiveness** - Better mobile experience

## 💬 Questions or Need Help?

- Check the [README.md](README.md) for setup instructions
- Read the [ARCHITECTURE.md](ARCHITECTURE.md) to understand the codebase
- Open a discussion or issue
- Reach out via the CognitiveSurge channel

## ✨ Recognition

Contributors will be recognized in:
- The README acknowledgments
- Project commits
- Thank you messages in releases

Thank you for contributing! 🎉
