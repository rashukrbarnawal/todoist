# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Community and Contributors section highlighting Indian tech cities
- Comprehensive documentation files:
  - CONTRIBUTING.md - Contribution guidelines
  - ARCHITECTURE.md - System architecture overview
  - API.md - API and components documentation
  - CHANGELOG.md - Version history

### Changed
- Updated README acknowledgments to mention vibrant tech communities across India

### Planned
- Accessibility improvements (ARIA labels, keyboard navigation)
- Internationalization (multi-language support)
- Due dates and recurring tasks
- Task notifications
- Collaboration features

---

## [1.0.0] - 2024-01-XX

### Added
- Initial release of Todoist Clone
- Project management functionality
  - Create, read, update, delete projects
  - Favorite/unfavorite projects
  - Project color customization
- Task management functionality
  - Add, edit, delete tasks
  - Mark tasks as complete/incomplete
  - Task dates
  - Task organization by project
- Dark mode support
  - Toggle dark/light mode
  - Pizza icon (🍕) theme switcher
  - Persisted theme preference
- Firebase integration
  - Real-time database synchronization
  - User authentication
  - Cloud data backup
- React Context API for state management
- Custom hooks for reusable logic
- Comprehensive test suite
  - 90%+ code coverage
  - Component tests with React Testing Library
  - Unit tests with Jest
  - E2E workflow testing
- SCSS styling
  - Professional, maintainable styles
  - Responsive design
  - Theme support
- ESLint and Prettier integration
  - Airbnb configuration
  - Automatic code formatting
  - Code quality checks

### Features

#### Project Management
- Create multiple projects
- Organize tasks by project
- Favorite projects for quick access
- Custom color coding for projects
- Project status tracking

#### Task Management
- Add tasks with descriptions
- Set due dates
- Mark tasks as complete
- Delete completed tasks
- Organize tasks by date
- Task status indicators

#### User Experience
- Dark/Light mode toggle
- Responsive UI
- Real-time updates
- Smooth animations
- Intuitive navigation

#### Code Quality
- 90%+ test coverage
- Consistent code style
- Type-safe patterns
- Performance optimized
- Security best practices

### Technical Details
- Built with React 16.13+
- Context API for state management
- Firebase Realtime Database
- SCSS for styling
- Jest for testing
- ESLint for code quality

---

## Release Notes

### How to Release

1. Update version in `package.json`
2. Update `CHANGELOG.md`
3. Create release commit: `chore: release v1.0.0`
4. Create Git tag: `v1.0.0`
5. Push changes and tag
6. Create GitHub release with changelog notes

### Version Numbering

- **Major (X.0.0)** - Breaking changes
- **Minor (0.X.0)** - New features (backward compatible)
- **Patch (0.0.X)** - Bug fixes (backward compatible)

---

## Links

- [Keep a Changelog](https://keepachangelog.com/)
- [Semantic Versioning](https://semver.org/)
- [GitHub Releases](https://github.com/rashukrbarnawal/todoist/releases)

---

## Maintainers

- **Rashu Krbarnawal** - [@rashukrbarnawal](https://github.com/rashukrbarnawal)

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines.

## License

This project is licensed under the MIT License - see [LICENSE.txt](LICENSE.txt) for details.
