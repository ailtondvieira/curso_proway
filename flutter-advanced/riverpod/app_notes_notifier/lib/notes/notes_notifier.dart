import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'note_model.dart';

class NotesNotifier extends StateNotifier<List<NoteModel>> {
  NotesNotifier() : super([]);

  void addNote(NoteModel note) {
    // state.add(note);
    if (note.title.isNotEmpty) {
      state = [note, ...state];
    }
  }

  void removeNote(NoteModel note) {
    state.remove(note);
    state = state.where((not) => not != note).toList();
  }
}
