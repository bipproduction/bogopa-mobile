import 'package:audio_session/audio_session.dart';
import 'package:bogopa_mobile/presentation/live/val/val_connection.dart';
import 'package:haishin_kit/audio_source.dart';
import 'package:haishin_kit/rtmp_connection.dart';
import 'package:haishin_kit/rtmp_stream.dart';
import 'package:haishin_kit/video_source.dart';

Future<void> initPlatformState(
    {void Function(RtmpConnection connection)? conn}) async {
  CameraPosition currentPosition = CameraPosition.back;
  if (!val_is_stream.value) {
    // Set up AVAudioSession for iOS.
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration(
      avAudioSessionCategory: AVAudioSessionCategory.playAndRecord,
      avAudioSessionCategoryOptions:
          AVAudioSessionCategoryOptions.allowBluetooth,
    ));

    RtmpConnection connection = await RtmpConnection.create();
    connection.eventChannel.receiveBroadcastStream().listen((event) {
      switch (event["data"]["code"]) {
        case 'NetConnection.Connect.Success':
          val_is_stream.value = true;
          break;
      }
    });

    RtmpStream stream = await RtmpStream.create(connection);
    stream.attachAudio(AudioSource());
    stream.attachVideo(VideoSource(position: currentPosition));
    conn!(connection);
  } else {
    print("stream sedang berjalan");
  }
}
