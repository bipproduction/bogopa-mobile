import 'package:bogopa_mobile/presentation/live/val/val_connection.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:audio_session/audio_session.dart';
import 'package:bogopa_mobile/core/constants/colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haishin_kit/audio_source.dart';
import 'package:haishin_kit/net_stream_drawable_texture.dart';
import 'package:haishin_kit/rtmp_connection.dart';
import 'package:haishin_kit/rtmp_stream.dart';
import 'package:haishin_kit/video_source.dart';
import 'live_berlangsung.dart';

class JudulDanStart extends StatefulWidget {
  const JudulDanStart({super.key});

  @override
  State<JudulDanStart> createState() => _JudulDanStartState();
}

class _JudulDanStartState extends State<JudulDanStart> {
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
    try {
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
            val_is_stream.value = true;
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
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    try {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(
            fit: StackFit.passthrough,
            children: <Widget>[
              Center(
                child: _stream == null
                    ? const Text("")
                    : NetStreamDrawableTexture(_stream),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: const Icon(
                                Icons.close,
                                color: AppColors.putih,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                color: AppColors.coklat,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: <Widget>[
                                const SizedBox(width: 5),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                          'https://i.pravatar.cc/80?img=2')),
                                ),
                                const SizedBox(width: 10),
                                const FormJudul()
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: <Widget>[
                          IconButton(
                            icon: const Icon(
                              Icons.flip_camera_android,
                              size: 60,
                              color: AppColors.putih,
                            ),
                            onPressed: () {
                              if (currentPosition == CameraPosition.front) {
                                currentPosition = CameraPosition.back;
                              } else {
                                currentPosition = CameraPosition.front;
                              }
                              _stream?.attachVideo(
                                  VideoSource(position: currentPosition));
                            },
                          ),
                          const SizedBox(height: 35),
                          SizedBox(
                              width: double.infinity,
                              child: _recording
                                  ? Ink(
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
                                    )
                                  : FilledButton(
                                      style: ButtonStyle(
                                        padding: const MaterialStatePropertyAll(
                                            EdgeInsets.all(20)),
                                        backgroundColor:
                                            const MaterialStatePropertyAll<
                                                Color>(AppColors.pinkMerah),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
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
                                          // val_stream[0] = _stream!;
                                          // val_connection[0] = _connection!;

                                          val_coba.update((val) {
                                            val!.connection = _connection;
                                          });

                                          _connection?.connect(
                                              "rtmp://85.31.224.193:1935/live/apa");
                                        }
                                        Get.to(const LiveBerlangsung());
                                      },
                                    )),
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
      );
    } catch (e) {
      return const Scaffold(
        body: Text("ada error"),
      );
    }
  }
}

class FormJudul extends StatefulWidget {
  const FormJudul({super.key});

  @override
  State<FormJudul> createState() => _FormJudulState();
}

class _FormJudulState extends State<FormJudul> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1.8,
        child: TextFormField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10.0)),
              isDense: true,
              contentPadding: const EdgeInsets.all(12),
              labelStyle: const TextStyle(fontSize: 15, color: AppColors.putih),
              labelText: 'Isi judul ruang LIVE',
            )),
      ),
    );
  }
}
