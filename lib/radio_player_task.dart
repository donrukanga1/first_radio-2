// TODO Implement this library.import 'package:audio_service/audio_service.dart';
import 'package:audio_service/audio_service.dart';
import 'package:just_audio/just_audio.dart';

class RadioPlayerTask extends BackgroundAudioTask {
  final _player = AudioPlayer();

  @override
  Future<void> onStart(Map<String, dynamic>? params) async {
    AudioServiceBackground.setState(
      controls: [MediaControl.pause, MediaControl.stop],
      playing: true,
      processingState: AudioProcessingState.ready,
    );

    await _player.setUrl('https://s3.radio.co/s265583d6c/listen');
    _player.play();
  }

  @override
  Future<void> onStop() async {
    await _player.stop();
    await super.onStop();
  }

  @override
  Future<void> onPause() async {
    _player.pause();
    AudioServiceBackground.setState(
      controls: [MediaControl.play, MediaControl.stop],
      playing: false,
      processingState: AudioProcessingState.ready,
    );
  }

  @override
  Future<void> onPlay() async {
    _player.play();
    AudioServiceBackground.setState(
      controls: [MediaControl.pause, MediaControl.stop],
      playing: true,
      processingState: AudioProcessingState.ready,
    );
  }
}
