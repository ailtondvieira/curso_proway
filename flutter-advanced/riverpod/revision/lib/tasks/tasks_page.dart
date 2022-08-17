import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:revision/tasks/tasks_providers.dart';

class TasksPage extends HookConsumerWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String nameUserProviderValue = ref.watch(nameUserProvider);
    StateController<String> nameUserStateProviderValue = ref.watch(nameUserStateProvider.state);
    return Scaffold(
      appBar: AppBar(
        title: Text(nameUserProviderValue),
      ),
      body: Center(
        child: Column(
          children: [
            Text(nameUserStateProviderValue.state),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          nameUserStateProviderValue.state = 'Renan';
        },
        child: const Icon(
          Icons.change_circle,
          size: 40,
        ),
      ),
    );
  }
}
