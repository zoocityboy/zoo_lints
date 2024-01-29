![alt text](https://raw.githubusercontent.com/zoocityboy/zoo_lints/main/assets/zoo_lints.webp "Resoure")
Developed by 🦏 [zoocityboy][zoocityboy_link]


[![ci][ci_badge]][ci_badge_link]
[![pub package][pub_badge]][pub_badge_link]
[![License: MIT][license_badge]][license_badge_link]
[![style: zoo lints][badge]][badge_link]

---

This package provides lint rules for Dart and Flutter which are used at [zoocityboy's projects][zoocityboy_link]. For more information, see the [complete list of options][analysis_options_yaml].

**Note**: This package is based on [very_good_analysis][vgv_analysis_link].

## Usage

To use the lints, add a dependency in your `pubspec.yaml`:

```yaml
# If you use `package:zoo_lints/zoo_lints.dart`, add a normal dependency.
dependencies:
  zoo_lints: ^3.1.0

# Or, if you just want `analysis_options.yaml`, it can be a dev dependency.
dev_dependencies:
  zoo_lints: ^3.1.0
```

Then, add an include in `analysis_options.yaml`:

```yaml
include: package:zoo_lints/flutter.yaml
```

This will ensure you always use the latest version of the lints. If you wish to restrict the lint version, specify a version of `analysis_options.yaml` instead:

```yaml
include: package:zoo_lints/analysis_options.3.1.0.yaml
```

## Suppressing Lints

There may be cases where specific lint rules are undesirable. Lint rules can be suppressed at the line, file, or project level.

An example use case for suppressing lint rules at the file level is suppressing the `prefer_const_constructors` in order to achieve 100% code coverage. This is due to the fact that const constructors are executed before the tests are run, resulting in no coverage collection.

### Project Level

To suppress a specific lint rule for an entire project, modify `analysis_options.yaml`:

```yaml
include: package:zoo_lints/analysis_options.yaml
linter:
  rules:
    public_member_api_docs: false
```

## Badge

To indicate your project is using `zoo_lints` →
[![style: zoo lints][badge]][badge_link]

```md
[![style: zoo lints](https://img.shields.io/badge/style-zoo_lints-3EB489.svg)](https://pub.dev/packages/zoo_lints)
```

[analysis_options_yaml]: https://github.com/zoocityboy/zoo_lints/blob/main/analysis_options.yaml
[ci_badge]: https://github.com/zoocityboy/zoo_lints/workflows/ci/badge.svg
[ci_badge_link]: https://github.com/zoocityboy/zoo_lints/actions
[badge]: https://img.shields.io/badge/style-zoo_lints-3EB489.svg
[badge_link]: https://pub.dev/packages/zoo_lints
[license_badge]: https://img.shields.io/badge/license-MIT-green.svg
[license_badge_link]: https://opensource.org/licenses/MIT
[logo_black]:https://raw.githubusercontent.com/zoocityboy/zoo_brand/main/styles/README/zoocityboy_dark.png#gh-light-mode-only
[logo_white]: https://raw.githubusercontent.com/zoocityboy/zoo_brand/main/styles/README/zoocityboy_light.png#gh-dark-mode-only
[zoo_lints_link]: https://github.com/zoocityboy/zoo_lints/
[pub_badge]: https://img.shields.io/pub/v/zoo_lints.svg
[pub_badge_link]: https://pub.dartlang.org/packages/zoo_lints
[zoocityboy_link]: https://github.com/zoocityboy
[zoocityboy_link_dark]: https://github.com/zoocityboy#gh-dark-mode-only
[zoocityboy_link_light]: https://github.com/zoocityboy#gh-light-mode-only
[vgv_analysis_link]: https://github.com/VeryGoodOpenSource/very_good_analysis
