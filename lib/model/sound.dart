import 'package:flutter/cupertino.dart';

class Sound {
  final int id;
  final String _image;
  final String name;
  final int background;

  const Sound(this.id, this._image, this.name, this.background);

  AssetImage getAssetImage() {
    return AssetImage('images/$_image');
  }
}