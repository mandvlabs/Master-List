import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Master List',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MasterListPage(title: 'Master List'),
    );
  }
}

class MasterListPage extends StatefulWidget {
  const MasterListPage({super.key, required this.title});

  final String title;

  @override
  State<MasterListPage> createState() => _MasterListPageState();
}

class _MasterListPageState extends State<MasterListPage> {
  final List<TodoItem> _items = [];
  final TextEditingController _textController = TextEditingController();

  void _addItem() {
    if (_textController.text.isNotEmpty) {
      setState(() {
        _items.add(TodoItem(title: _textController.text));
        _textController.clear();
      });
    }
  }

  void _toggleItem(int index) {
    setState(() {
      _items[index].isCompleted = !_items[index].isCompleted;
    });
  }

  void _removeItem(int index) {
    setState(() {
      _items.removeAt(index);
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: const InputDecoration(
                      hintText: 'Add a new item',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (_) => _addItem(),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _addItem,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ),
          Expanded(
            child: _items.isEmpty
                ? const Center(
                    child: Text(
                      'No items yet. Add one above!',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  )
                : ListView.builder(
                    itemCount: _items.length,
                    itemBuilder: (context, index) {
                      final item = _items[index];
                      return ListTile(
                        leading: Checkbox(
                          value: item.isCompleted,
                          onChanged: (_) => _toggleItem(index),
                        ),
                        title: Text(
                          item.title,
                          style: TextStyle(
                            decoration: item.isCompleted
                                ? TextDecoration.lineThrough
                                : null,
                            color: item.isCompleted ? Colors.grey : null,
                          ),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => _removeItem(index),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class TodoItem {
  String title;
  bool isCompleted;

  TodoItem({
    required this.title,
    this.isCompleted = false,
  });
}
