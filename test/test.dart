import 'package:matcha/data/provider/provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:matcha/data/api/api.dart';

void main() async {
  final container = ProviderContainer();
  api.User('b1021091', 'gsi2Z2WU');
  // Thanks to "container", we can read our provider.
  final value = container.read(ApiDataProvider.notifier);
  final provider = container.read(ApiDataProvider);
  await value.saveTimetable();
  print(value.state.timetable);
}
