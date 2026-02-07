# Contributing to Master List

Thank you for your interest in contributing to Master List! This document provides guidelines for contributing to the project.

## Getting Started

1. **Fork the repository** on GitHub
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/your-username/Master-List.git
   cd Master-List
   ```
3. **Install dependencies**:
   ```bash
   flutter pub get
   ```
4. **Create a branch** for your changes:
   ```bash
   git checkout -b feature/your-feature-name
   ```

## Development Guidelines

### Code Style

- Follow the [Flutter Style Guide](https://flutter.dev/docs/development/tools/formatting)
- Use `flutter format .` to format your code before committing
- The project uses `flutter_lints` for code analysis
- Run `flutter analyze` to check for issues

### Testing

- Write tests for new features
- Ensure all existing tests pass:
  ```bash
  flutter test
  ```
- Maintain or improve test coverage
- Follow the existing test structure in `test/widget_test.dart`

### Commit Messages

- Use clear and descriptive commit messages
- Start with a verb in present tense (e.g., "Add", "Fix", "Update")
- Keep the first line under 50 characters
- Add detailed description if needed

Example:
```
Add search functionality for items

- Implement search bar in app bar
- Filter items based on search query
- Update tests for search feature
```

## Submitting Changes

1. **Ensure your code passes all checks**:
   ```bash
   flutter analyze
   flutter test
   flutter format .
   ```

2. **Commit your changes**:
   ```bash
   git add .
   git commit -m "Your descriptive commit message"
   ```

3. **Push to your fork**:
   ```bash
   git push origin feature/your-feature-name
   ```

4. **Create a Pull Request** on GitHub:
   - Provide a clear title and description
   - Reference any related issues
   - Include screenshots for UI changes
   - List any breaking changes

## Feature Requests and Bug Reports

### Reporting Bugs

When reporting bugs, please include:
- Description of the issue
- Steps to reproduce
- Expected behavior
- Actual behavior
- Flutter version and platform (Android/iOS/Web/Desktop)
- Screenshots if applicable

### Suggesting Features

When suggesting features, please include:
- Clear description of the feature
- Use cases and benefits
- Possible implementation approach (optional)
- Mockups or examples (optional)

## Code of Conduct

### Our Standards

- Be respectful and inclusive
- Welcome newcomers
- Accept constructive criticism gracefully
- Focus on what's best for the community
- Show empathy towards others

### Unacceptable Behavior

- Harassment or discriminatory language
- Trolling or insulting comments
- Personal or political attacks
- Publishing others' private information
- Other unprofessional conduct

## Questions?

If you have questions about contributing, feel free to:
- Open an issue with the "question" label
- Start a discussion in the repository

## License

By contributing to Master List, you agree that your contributions will be licensed under the MIT License.

Thank you for contributing! 🎉
