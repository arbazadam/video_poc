import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';

var playerStateKey = GlobalKey<SoundPlayerUIState>();

class AudioPlayingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        SoundPlayerUI.fromTrack(
          Track(
            trackPath: '',
            trackTitle: 'machayenge',
          ),
          iconColor: Colors.green,
          showTitle: true,
        ),
        ElevatedButton(
            child: Text("Pause"),
            onPressed: () => playerStateKey.currentState!.pause()),
        ElevatedButton(
            child: Text("Pause"),
            onPressed: () => playerStateKey.currentState!.pause())
      ]),
    ));
  }

  Future<Track> loadTrack() async {
    Track track;
    track = Track(trackPath: 'assets/rock.mp3');

    return track;
  }
}
