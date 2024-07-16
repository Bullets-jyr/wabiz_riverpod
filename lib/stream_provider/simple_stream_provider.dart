import 'package:flutter_riverpod/flutter_riverpod.dart';

final simpleStreamProvider = StreamProvider<int>((ref) async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
});
