# Master List Flutter Application

## Overview

This is a simple and elegant task management application built with Flutter. The app provides a clean interface for managing your master list of tasks and to-dos.

## Features

### 1. Add Items
Users can add new items to their master list by:
- Typing in the text field at the top
- Clicking the "+" button
- Or pressing Enter after typing

### 2. Mark Items as Complete
- Each item has a checkbox on the left side
- Click the checkbox to toggle the completion status
- Completed items are shown with a strikethrough and grey text

### 3. Delete Items
- Each item has a delete button (trash icon) on the right side
- Click the trash icon to remove an item from the list
- Removed items are permanently deleted from the list

### 4. Empty State
When no items exist in the list, a helpful message is displayed:
"No items yet. Add one above!"

## Technical Details

### Architecture
- Built with Flutter's Material Design 3
- Uses StatefulWidget for state management
- Implements a simple TodoItem model class
- Clean separation of UI and data logic

### Code Structure
- `MyApp`: Root widget that sets up MaterialApp
- `MasterListPage`: StatefulWidget for the main page
- `_MasterListPageState`: Manages the list state and user interactions
- `TodoItem`: Simple data class for list items

### UI Components
- AppBar with title
- TextField for input
- ElevatedButton for adding items
- ListView.builder for displaying items
- Checkbox for completion status
- IconButton for deletion

### State Management
The app uses Flutter's built-in setState() for managing:
- List of items
- Item completion status
- Text field content

### Styling
- Material Design 3 theming
- Deep purple color scheme
- Responsive layout that works on all screen sizes
- Clear visual feedback for completed items

## Platform Support

The application is configured to run on:
- **Android**: Via the Android APK build
- **iOS**: Via the iOS IPA build
- **Web**: Via the web build (HTML/JavaScript)
- **Desktop**: Can be built for Windows, macOS, and Linux

## Future Enhancements

Potential features for future versions:
- Persistent storage (save items between sessions)
- Categories or tags for items
- Priority levels
- Due dates
- Search functionality
- Item reordering
- Dark mode toggle
- Cloud synchronization
- Sharing lists with others

## Testing

The app includes comprehensive widget tests that verify:
- App initialization
- Adding items
- Toggling completion status
- Deleting items
- Empty state display

Run tests with:
```bash
flutter test
```

## Development

### Prerequisites
- Flutter SDK 3.0.0 or higher
- Dart SDK (included with Flutter)
- An IDE (VS Code, Android Studio, or IntelliJ IDEA)

### Setup
1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Run `flutter run` to start the app

### Code Quality
The project uses flutter_lints for maintaining code quality and follows Flutter best practices.
