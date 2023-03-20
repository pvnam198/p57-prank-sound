import 'package:flutter/cupertino.dart';

class SoundPackage {
  final int id;
  final String _image;
  final String title;
  final int background;
  final int backgroundTitle;

  const SoundPackage(
      this.id, this._image, this.title, this.background, this.backgroundTitle);

  AssetImage getAssetImage() {
    return AssetImage('images/$_image');
  }
}
