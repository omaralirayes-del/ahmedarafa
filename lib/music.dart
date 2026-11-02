import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

class AudioManager with WidgetsBindingObserver {
  static final AudioManager _instance = AudioManager._internal();
  factory AudioManager() => _instance;
  AudioManager._internal();

  late final AudioPlayer _audioPlayer;
  bool _isInitialized = false;

  Future<void> initAndPlay() async {
    if (_isInitialized) return;

    try {
      _audioPlayer = AudioPlayer();
      WidgetsBinding.instance.addObserver(this);

      // تفعيل التكرار اللانهائي لملف الـ MP3
      await _audioPlayer.setReleaseMode(ReleaseMode.loop);

      // تشغيل ملف الـ MP3 مباشرة من الـ assets
      await _audioPlayer.play(AssetSource('music.mp3'));
      
      _isInitialized = true;
    } catch (e) {
      debugPrint("Audio Error: $e");
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.paused || state == AppLifecycleState.detached) {
      _audioPlayer.pause();
    } else if (state == AppLifecycleState.resumed) {
      _audioPlayer.resume();
    }
  }

  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _audioPlayer.dispose();
    _isInitialized = false;
  }
}