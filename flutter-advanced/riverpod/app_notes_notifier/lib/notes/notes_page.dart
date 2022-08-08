import 'package:app_notes_notifier/notes/note_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'notes_provider.dart';

class NotesPage extends HookConsumerWidget {
  NotesPage({Key? key}) : super(key: key);

  final noteController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notes = ref.watch(notesProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              controller: noteController,
              decoration: const InputDecoration(
                hintText: "Escreva sua notação.",
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(notes[index].title),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        ref
                            .read(notesProvider.notifier)
                            .removeNote(notes[index]);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(notesProvider.notifier).addNote(
                NoteModel(title: noteController.text),
              );
          noteController.clear();
        },
        child: const Icon(Icons.save, size: 35),
      ),
    );
  }
}
