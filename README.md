# Master List

A simple and elegant Flutter application for managing your master list of tasks and to-dos.

## Features

- ✅ Add new items to your list
- ✅ Mark items as complete/incomplete
- ✅ Delete items from your list
- ✅ Clean and intuitive Material Design UI
- ✅ Cross-platform support (iOS, Android, Web, Desktop)

## Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK (included with Flutter)

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/mandvlabs/Master-List.git
   cd Master-List
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

### Building

To build the application for different platforms:

**Android:**
```bash
flutter build apk
```

**iOS:**
```bash
flutter build ios
```

**Web:**
```bash
flutter build web
```

**Desktop:**
```bash
flutter build windows  # On Windows
flutter build macos    # On macOS
flutter build linux    # On Linux
```

## Usage

1. **Add Items**: Type your task in the text field and press the "+" button or hit Enter
2. **Complete Items**: Click the checkbox next to an item to mark it as complete
3. **Delete Items**: Click the red trash icon to remove an item from the list

## Project Structure

```
master_list/
├── lib/
│   └── main.dart          # Main application file
├── test/                  # Test files
├── android/               # Android-specific files
├── ios/                   # iOS-specific files
├── web/                   # Web-specific files
├── pubspec.yaml          # Project dependencies
└── README.md             # This file
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the MIT License.