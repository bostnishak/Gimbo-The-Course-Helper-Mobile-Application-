import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'main.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  final TextEditingController _noteController = TextEditingController();
  List<String> _notes = [];

  @override
  void initState() {
    super.initState();
    _loadNotes();
  }

  Future<void> _loadNotes() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _notes = prefs.getStringList('notes') ?? [];
    });
  }

  Future<void> _saveNotes() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('notes', _notes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          ValueListenableBuilder<ThemeMode>(
            valueListenable: themeNotifier,
            builder: (_, ThemeMode currentMode, __) {
              return IconButton(
                icon: Icon(currentMode == ThemeMode.light ? Icons.dark_mode : Icons.light_mode),
                onPressed: () { themeNotifier.value = currentMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light; },
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: _noteController,
            decoration: InputDecoration(
              labelText: 'Add Note',
              suffixIcon: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    _notes.add(_noteController.text);
                    _noteController.clear();
                    _saveNotes();
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _notes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_notes[index], style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        _notes.removeAt(index);
                        _saveNotes();
                      });
                    },
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
