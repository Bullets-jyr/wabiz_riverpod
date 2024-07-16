import 'package:flutter_riverpod/flutter_riverpod.dart';

final simpleIntFutureProvider = FutureProvider<int>(
  (ref) async {
    await Future.delayed(const Duration(seconds: 3));
    return 0;
  },
);
