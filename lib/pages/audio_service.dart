import 'package:audio_service/audio_service.dart';
import 'package:just_audio/just_audio.dart';

class RadioAudioHandler extends BaseAudioHandler {
  final _player = AudioPlayer();

  RadioAudioHandler() {
    _player.playbackEventStream.listen((event) {
      playbackState.add(playbackState.value.copyWith(
        controls: [
          MediaControl.play,
          MediaControl.pause,
          MediaControl.stop,
        ],
        systemActions: const {
          MediaAction.seek,
        },
        androidCompactActionIndices: const [0, 1, 2],
        playing: _player.playing,
        processingState: _mapProcessingState(event.processingState),
        updatePosition: event.updatePosition,
        bufferedPosition: event.bufferedPosition,
        speed: _player.speed,
        queueIndex: event.currentIndex,
      ));
    });
  }

  Future<void> play() => _player.play();
  Future<void> pause() => _player.pause();
  Future<void> stop() => _player.stop();
  Future<void> setUrl(String url) => _player.setUrl(url);

  AudioProcessingState _mapProcessingState(ProcessingState state) {
    switch (state) {
      case ProcessingState.idle:
        return AudioProcessingState.idle;
      case ProcessingState.loading:
        return AudioProcessingState.loading;
      case ProcessingState.buffering:
        return AudioProcessingState.buffering;
      case ProcessingState.ready:
        return AudioProcessingState.ready;
      case ProcessingState.completed:
        return AudioProcessingState.completed;
      default:
        throw Exception("Invalid state: $state");
    }
  }
}
