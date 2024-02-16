import 'package:bogopa_mobile/presentation/live/val/val_connection.dart';
import 'package:bogopa_mobile/presentation/live/witget/jumlah_penonton.dart';
import 'package:bogopa_mobile/presentation/live/witget/live_berakhir.dart';
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

import 'alat_untuk_host.dart';
import 'view_vs.dart';

class LiveBerlangsung extends StatefulWidget {
  const LiveBerlangsung({super.key});

  @override
  State<LiveBerlangsung> createState() => _LiveBerlangsungState();
}

class _LiveBerlangsungState extends State<LiveBerlangsung> {
  // ignore: unused_field
  RtmpConnection? _connection;
  RtmpStream? _stream;
  // ignore: unused_field
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
                        horizontal: 10, vertical: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const CircleAvatar(
                              radius: 28,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 27,
                                backgroundImage: NetworkImage(
                                    'https://i.pravatar.cc/100?img=3'),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Alam Ganjar',
                                  softWrap: false,
                                  overflow: TextOverflow.fade,
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 13.0,
                                          color: AppColors.putih,
                                          fontWeight: FontWeight.normal)),
                                ),
                                Text(
                                  '0 Suka',
                                  softWrap: false,
                                  overflow: TextOverflow.fade,
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 13.0,
                                          color: AppColors.putih,
                                          fontWeight: FontWeight.normal)),
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                  color: AppColors.coklat,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: TextButton(
                                child: Text(
                                  '1',
                                  softWrap: false,
                                  overflow: TextOverflow.fade,
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 13.0,
                                          color: AppColors.putih,
                                          fontWeight: FontWeight.normal)),
                                ),
                                onPressed: () {
                                  showModalBottomSheet<void>(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        height: 300,
                                        width: double.infinity,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(30.0),
                                                topRight:
                                                    Radius.circular(30.0))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Penonton',
                                                    softWrap: false,
                                                    overflow: TextOverflow.fade,
                                                    style: GoogleFonts.poppins(
                                                        textStyle:
                                                            const TextStyle(
                                                                fontSize: 16.0,
                                                                color: AppColors
                                                                    .coklat,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const JumlahPenonton(),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            Text(
                              'Penonton',
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 8.0,
                                      color: AppColors.putih,
                                      fontWeight: FontWeight.normal)),
                            ),
                          ],
                        )
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const FormJudulLive(),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 50,
                          height: 45,
                          decoration: BoxDecoration(
                            color: AppColors.coklat,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextButton(
                            child: Text(
                              'VS',
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 18.0,
                                      color: AppColors.putih,
                                      fontWeight: FontWeight.bold)),
                            ),
                            onPressed: () {
                              showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    height: 300,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30.0),
                                            topRight: Radius.circular(30.0))),
                                    child: const Padding(
                                        padding: EdgeInsets.all(15.0),
                                        child: ViewVS()),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.menu,
                              color: AppColors.putih, size: 40),
                          onPressed: () {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 300,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30.0),
                                          topRight: Radius.circular(30.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Alat untuk host',
                                              softWrap: false,
                                              overflow: TextOverflow.fade,
                                              style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      fontSize: 16.0,
                                                      color: AppColors.coklat,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const AlatUntukHost(),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        InkWell(
                          onTap: () {
                            // if (_recording) {
                            //   _connection?.close();
                            //   setState(() {
                            //     _recording = false;
                            //   });
                            // } else {
                            //   _connection?.connect(
                            //       "rtmp://85.31.224.193:1935/live/apa");
                            // }
                            Get.to(const LiveBerakhir());
                          },
                          child: const Icon(
                            Icons.close,
                            color: AppColors.putih,
                            size: 40,
                          ),
                        )
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FormJudulLive extends StatefulWidget {
  const FormJudulLive({super.key});

  @override
  State<FormJudulLive> createState() => _FormJudulLiveState();
}

class _FormJudulLiveState extends State<FormJudulLive> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        child: TextFormField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10.0)),
              isDense: true,
              contentPadding: const EdgeInsets.all(12),
              labelStyle: const TextStyle(fontSize: 15, color: AppColors.putih),
              labelText: 'Katakan Sesuatu.....',
            )),
      ),
    );
  }
}
