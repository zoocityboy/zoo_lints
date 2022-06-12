/// zoo lints rules for dart analyzer
/// used internally by [zoocityboy](https://github.com/zoocityboy).
library zoo_lints;

void unawaited(Future<void>? future) {}

/// This allows a value of type T or T?
/// to be treated as a value of type T?.
///
/// We use this so that APIs that have become
/// non-nullable can still be used with `!` and `?`
/// to support older versions of the API as well.
T? ambiguate<T>(T? value) => value;
