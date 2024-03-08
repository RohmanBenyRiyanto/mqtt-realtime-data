import '../../generate/gen/assets.gen.dart';

enum TypeMain {
  home,
  profile,
}

extension TypeMainExtension on TypeMain {
  String label() {
    switch (this) {
      case TypeMain.home:
        return 'Home';
      case TypeMain.profile:
        return 'Profile';
    }
  }

  String icon() {
    switch (this) {
      case TypeMain.home:
        return Assets.icons.home.path;
      case TypeMain.profile:
        return Assets.icons.user.path;
    }
  }
}
