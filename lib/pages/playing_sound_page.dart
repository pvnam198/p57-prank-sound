import 'package:flutter/material.dart';

import '../model/sound.dart';

class PlayingSoundPage extends StatefulWidget {
  static const routeName = '/PlayingSoundPage';

  const PlayingSoundPage({Key? key}) : super(key: key);

  @override
  State<PlayingSoundPage> createState() => _PlayingSoundPage();
}

class _PlayingSoundPage extends State<PlayingSoundPage> {
  @override
  Widget build(BuildContext context) {
    _PlayingSoundPage();
    final args = ModalRoute.of(context)!.settings.arguments as Sound;

    bool isPlaying = false;

    const List<Widget> icons = <Widget>[
      Icon(Icons.play_arrow),
      Icon(Icons.pause),
    ];

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(args.name)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    iconSize: 100,
                    onPressed: () {
                      debugPrint("press image");
                    },
                    icon: Image(image: args.getAssetImage()))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 100,
                  onPressed: () {
                    setState(() {
                      debugPrint("isPlaying first" + isPlaying.toString());
                      isPlaying = !isPlaying;
                      debugPrint("isPlaying second" + isPlaying.toString());
                    });
                  },
                  icon: isPlaying
                      ? const Icon(Icons.pause)
                      : const Icon(
                          Icons.play_arrow,
                        ),
                ),
                Text(isPlaying ? 'Pause' : 'Play'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
