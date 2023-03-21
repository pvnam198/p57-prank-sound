import 'package:flutter/cupertino.dart';
import 'package:p57_prank_sound/model/sound.dart';

class SoundPackage {
  final int id;
  final String _image;
  final String title;
  final int background;
  final int backgroundTitle;
  final List<Sound> sounds;

  const SoundPackage(this.id, this._image, this.title, this.background, this.backgroundTitle, this.sounds);

  AssetImage getAssetImage() {
    return AssetImage('images/$_image');
  }
}
