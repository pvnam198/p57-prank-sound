import 'package:flutter/material.dart';

import '../model/sound_package.dart';

class ItemSoundPackage extends StatelessWidget {
  final SoundPackage soundPackage;

  const ItemSoundPackage(this.soundPackage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Stack(
              children: [
                Container(
                  decoration:
                      BoxDecoration(color: Color(soundPackage.background)),
                  child: Image(image: soundPackage.getAssetImage()),
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                        child: Container(
                            decoration: const BoxDecoration(color: Colors.red),
                            child: Text(soundPackage.title)),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
