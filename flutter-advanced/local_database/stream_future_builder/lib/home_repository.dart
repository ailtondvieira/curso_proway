class HomeRepository {
  Future<List<String>> getAllNames() async {
    await Future.delayed(const Duration(seconds: 5));
    return ['Aiton', 'alo'];
  }

  Stream<int> timedCounter(Duration interval, [int? maxCount]) async* {
    int i = 0;
    while (true) {
      await Future.delayed(interval);
      yield i++;
      if (i == maxCount) break;
    }
  }
}
