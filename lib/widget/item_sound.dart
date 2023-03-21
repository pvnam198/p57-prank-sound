import 'package:flutter/material.dart';
import 'package:p57_prank_sound/model/sound.dart';
import 'package:p57_prank_sound/pages/playing_sound_page.dart';

import '../model/sound_package.dart';

class ItemSound extends StatelessWidget {
  final Sound soundPackage;

  const ItemSound(this.soundPackage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: InkWell(
        onTap: (){
          debugPrint('next screen');
          Navigator.of(context, rootNavigator: true).pushNamed(PlayingSoundPage.routeName, arguments: soundPackage);
          // Navigator.pushNamed(
          //   context,
          //   '/SecondScreen'
          //   // arguments: soundPackage.sounds
          // );
        },
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
                              child: Text(soundPackage.name)),
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
