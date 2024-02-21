import 'dart:async';

import 'package:audio_session/audio_session.dart';
import 'package:bogopa_mobile/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haishin_kit/audio_source.dart';
import 'package:haishin_kit/net_stream_drawable_texture.dart';
import 'package:haishin_kit/rtmp_connection.dart';
import 'package:haishin_kit/rtmp_stream.dart';
import 'package:haishin_kit/video_source.dart';

class MyCamera extends StatefulWidget {
  const MyCamera({super.key});

  @override
  State<MyCamera> createState() => _MyCameraState();
}

class _MyCameraState extends State<MyCamera> {
  RtmpConnection? _connection;
  RtmpStream? _stream;
  bool _recording = false;
  CameraPosition currentPosition = CameraPosition.back;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
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
          _stream?.publish("live");
          setState(() {
            _recording = true;
          });
          break;
      }
    });
    RtmpStream stream = await RtmpStream.create(connection);
    stream.attachAudio(AudioSource());
    stream.attachVideo(VideoSource(position: currentPosition));

    if (!mounted) return;

    setState(() {
      _connection = connection;
      _stream = stream;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('HaishinKit example app'), actions: [
            IconButton(
              icon: const Icon(Icons.flip_camera_android),
              onPressed: () {
                if (currentPosition == CameraPosition.front) {
                  currentPosition = CameraPosition.back;
                } else {
                  currentPosition = CameraPosition.front;
                }
                _stream?.attachVideo(VideoSource(position: currentPosition));
              },
            )
          ]),
          body: Stack(
            fit: StackFit.passthrough,
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Center(
                child: _stream == null
                    ? const Text("")
                    : NetStreamDrawableTexture(_stream),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: _recording
                      ? FilledButton(
                          style: ButtonStyle(
                            padding: const MaterialStatePropertyAll(
                                EdgeInsets.all(20)),
                            backgroundColor:
                                const MaterialStatePropertyAll<Color>(
                                    AppColors.pinkMerah),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )),
                          ),
                          child: Text(
                            'Mulai Siaran',
                            softWrap: false,
                            overflow: TextOverflow.fade,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 16.0,
                                    color: AppColors.putih,
                                    fontWeight: FontWeight.bold)),
                          ),
                          onPressed: () {
                            if (_recording) {
                              _connection?.close();
                              setState(() {
                                _recording = false;
                              });
                            } else {
                              _connection?.connect(
                                  "rtmp://85.31.224.193:1935/live/apa");
                            }
                          },
                        )
                      : Ink(
                          decoration: const ShapeDecoration(
                            color: Colors.black,
                            shape: CircleBorder(),
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.close,
                              size: 70,
                            ),
                            color: Colors.white,
                            onPressed: () {
                              if (_recording) {
                                _connection?.close();
                                setState(() {
                                  _recording = false;
                                });
                              } else {
                                _connection?.connect(
                                    "rtmp://85.31.224.193:1935/live/apa");
                              }
                            },
                          ),
                        ),
                ),
              )
            ],
          )),
    );
  }
}
