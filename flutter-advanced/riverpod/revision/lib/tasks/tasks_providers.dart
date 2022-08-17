import 'package:hooks_riverpod/hooks_riverpod.dart';

//! sem estado
Provider<String> nameUserProvider = Provider<String>((ref) => 'JPAR');

//? com estado
StateProvider<String> nameUserStateProvider = StateProvider<String>((ref) => 'GetX');
