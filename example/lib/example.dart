import 'package:zoo_lints/zoo_lints.dart';

Future<void> main() async {
  /// Await async functions.
  await asyncFunction();

  /// Use [unawaited] to indicate that a [Future] is intentionally not awaited.
  /// Otherwise you'll get a warning
  unawaited(asyncFunction());
}

Future<String> asyncFunction() => Future.value('hello world!');
