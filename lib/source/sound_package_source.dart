import 'package:p57_prank_sound/model/sound_package.dart';

class SoundPackageSource {
  static SoundPackage soundPack1 =
      const SoundPackage(1, 'moon.png', 'moon', 0xFFFEE6B6, 0xFFFFD068);

  static SoundPackage soundPack2 =
      const SoundPackage(2, 'mushroom.png', 'mushroom', 0xFFC6E9FF, 0xFF6EC8FE);

  static SoundPackage soundPack3 = const SoundPackage(
      3, 'sunflower.png', 'sunflower', 0xFFFEE6B6, 0xFFFFD068);

  static SoundPackage soundPack4 =
      const SoundPackage(4, 'tulip.png', 'tulip', 0xFFC6E9FF, 0xFF6EC8FE);

  static SoundPackage soundPack5 =
      const SoundPackage(5, 'water.png', 'water', 0xFFFEE6B6, 0xFFFFD068);

  static SoundPackage soundPack6 =
      const SoundPackage(6, 'sun.png', 'sun', 0xFFC6E9FF, 0xFF6EC8FE);

  static final soundsPackages = [
    soundPack1,
    soundPack2,
    soundPack2,
    soundPack3,
    soundPack4,
    soundPack5,
    soundPack6
  ];
}
