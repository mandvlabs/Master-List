# Master List App - Visual Guide

## App Screen Layout

```
┌─────────────────────────────────────┐
│      Master List                    │  ← App Bar (Deep Purple)
├─────────────────────────────────────┤
│                                     │
│  ┌──────────────────────┐  ┌───┐  │
│  │ Add a new item       │  │ + │  │  ← Input Section
│  └──────────────────────┘  └───┘  │
│                                     │
│  ┌─────────────────────────────┐  │
│  │ □  Buy groceries       🗑️  │  │
│  ├─────────────────────────────┤  │
│  │ ☑  Complete homework   🗑️  │  │  ← List Items
│  ├─────────────────────────────┤  │
│  │ □  Call dentist        🗑️  │  │
│  └─────────────────────────────┘  │
│                                     │
└─────────────────────────────────────┘
```

## Features Illustrated

### 1. Add Items
```
User types "Buy milk" in text field
          ↓
User clicks + button (or presses Enter)
          ↓
New item appears in list with unchecked checkbox
```

### 2. Complete Items
```
Item: □ Buy milk
          ↓
User clicks checkbox
          ↓
Item: ☑ Buy milk (text appears grey with strikethrough)
```

### 3. Delete Items
```
Item: □ Buy milk 🗑️
          ↓
User clicks trash icon
          ↓
Item is removed from list
```

### 4. Empty State
When no items exist:
```
┌─────────────────────────────────────┐
│      Master List                    │
├─────────────────────────────────────┤
│                                     │
│  ┌──────────────────────┐  ┌───┐  │
│  │ Add a new item       │  │ + │  │
│  └──────────────────────┘  └───┘  │
│                                     │
│                                     │
│      No items yet.                  │
│      Add one above!                 │
│                                     │
└─────────────────────────────────────┘
```

## Color Scheme

- **Primary Color**: Deep Purple (#673AB7)
- **Completed Items**: Grey text with strikethrough
- **Delete Icon**: Red (#F44336)
- **Background**: White
- **Text**: Black (Active items), Grey (Completed items)

## Interaction Flow

1. **Adding an Item**
   - Focus on text field
   - Type item description
   - Press Enter or click + button
   - Item appears at bottom of list
   - Text field clears automatically

2. **Marking Complete**
   - Click checkbox next to any item
   - Item text turns grey
   - Strikethrough applied to text
   - Checkbox shows checkmark
   - Click again to unmark

3. **Deleting an Item**
   - Click red trash icon on right side
   - Item immediately removed from list
   - If last item: empty state message appears

## Responsive Design

The app adapts to different screen sizes:
- **Mobile**: Vertical layout with full-width items
- **Tablet**: Same layout with more padding
- **Desktop**: Centered layout with maximum width
- **Web**: Full responsive support

## Accessibility Features

- Clear visual hierarchy
- High contrast text and icons
- Touch-friendly tap targets
- Keyboard navigation support (Enter to add)
- Screen reader compatible
- Clear focus indicators

## Technical Implementation

### State Management
- Uses Flutter's built-in `setState()`
- List stored in component state
- Automatically rebuilds UI on changes

### Data Structure
```dart
class TodoItem {
  String title;           // Item description
  bool isCompleted;       // Completion status
}
```

### Key Components
- `TextField`: For user input
- `ListView.builder`: Efficient list rendering
- `Checkbox`: Toggle completion
- `IconButton`: Delete action
- `ListTile`: Item layout container
