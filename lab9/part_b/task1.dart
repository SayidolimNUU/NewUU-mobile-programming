import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      theme: ThemeData.light(),
      home: const NotesScreen(),
    );
  }
}

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  late Future<Database> _dbFuture;
  List<Map<String, dynamic>> _notes = [];

  @override
  void initState() {
    super.initState();
    _dbFuture = _initDatabase();
    _loadNotes();
  }

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String dbPath = path.join(documentsDirectory.path, 'notes.db');

    return await openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE notes (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            content TEXT
          )
        ''');
      },
    );
  }

  Future<void> _loadNotes() async {
    final db = await _dbFuture;
    final notes = await db.query('notes', orderBy: 'id DESC');
    setState(() {
      _notes = notes;
    });
  }

  Future<void> _addNote(Database db, String title, String content) async {
    if (title.isEmpty && content.isEmpty) return;
    await db.insert('notes', {'title': title, 'content': content});
    await _loadNotes(); // refresh
  }

  Future<void> _deleteNote(Database db, int id) async {
    await db.delete('notes', where: 'id = ?', whereArgs: [id]);
    await _loadNotes(); // refresh
  }

  void _showAddNoteDialog(Database db) {
    final titleController = TextEditingController();
    final contentController = TextEditingController();

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Add Note'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: contentController,
              decoration: const InputDecoration(labelText: 'Content'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              await _addNote(db, titleController.text, contentController.text);
              Navigator.pop(dialogContext);
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Database>(
      future: _dbFuture,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        final db = snapshot.data!;

        return Scaffold(
          appBar: AppBar(title: const Text('Notes')),
          body: _notes.isEmpty
              ? const Center(child: Text('No notes yet.'))
              : ListView.builder(
                  itemCount: _notes.length,
                  itemBuilder: (context, index) {
                    final note = _notes[index];
                    return ListTile(
                      title: Text(note['title'] ?? ''),
                      subtitle: Text(note['content'] ?? ''),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => _deleteNote(db, note['id']),
                      ),
                    );
                  },
                ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _showAddNoteDialog(db),
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
