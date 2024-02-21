import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_socket_client/web_socket_client.dart';
import '../../../../core/assets/assets.gen.dart';
import '../../../../core/constants/colors.dart';
import '../../page/menu_user_page.dart';
import '../../page/view_info_profile_user.dart';
import '../input_cht_coba.dart';

enum Options { hapus, putuskan }

class ChatPage extends StatefulWidget {
  const ChatPage({super.key, required this.name});

  final String name;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late WebSocket? socket = WebSocket(Uri.parse('wss://io.wibudev.com/'),
      backoff: const ConstantBackoff(Duration(seconds: 1)));

  List listMessage = <dynamic>[];
  //  final List<Map<String, dynamic>>  listMessage = jsonDecode(utf8.decode(event));
  //       for (Map<String, dynamic> map in listMessage) {
  //         if (!map['isMe']) {
  //           // jika pesan bukan dari user yang login maka dibalas dengan nama pengirimnya
  //           map['text'] = '${map['nama']}: ${map['text']}';
  //         } else {
  //           map['isMe'] = true;
  //         }
  //       }

  @override
  void initState() {
    super.initState();
    socket?.messages.listen((event) {
      setState(() {
        listMessage.add(jsonDecode(event));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.putih,
        leadingWidth: 250,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 2,
              ),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Assets.icons.back.svg(height: 32, width: 32),
              ),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () {
                  Get.to(const ViewInfoProfileUserPage(),
                      transition: Transition.noTransition);
                },
                child: const CircleAvatar(
                  radius: 26,
                  backgroundImage:
                      NetworkImage('https://i.pravatar.cc/100?img=1'),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'Sarah',
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 18.0,
                                  color: AppColors.coklat,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(width: 5),
                        const Icon(
                          Icons.verified,
                          size: 20,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    const SizedBox(height: 1),
                    Text('Aktif 1 menit lalu',
                        softWrap: false,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 10.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
        actions: <Widget>[
          InkWell(
              onTap: () {
                Get.to(const ViewMenuUserPage(),
                    transition: Transition.noTransition);
              },
              child: PopupMenuButton(
                itemBuilder: (ctx) => [
                  _buildPopupMenuItem('Hapus Riwayat Obrolan',
                      Icons.speaker_notes_off, Options.hapus.index),
                  _buildPopupMenuItem(
                      'Putuskan', Icons.close, Options.putuskan.index),
                ],
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // ignore: avoid_unnecessary_containers
                    Container(
                        // decoration: const BoxDecoration(
                        //     color: AppColors.pinkMerah,
                        //     borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          listMessage.map((e) => e.toString()).join('\n'),
                          style: const TextStyle(color: Colors.black),
                        //       .map((e) => e.toString())
                        //       .join('\n')
                        //       .replaceAll('{', '')
                        //       .replaceAll('}', '')
                        //       .replaceAll('data:', ''),
                        //   style: GoogleFonts.poppins(
                        //       textStyle: const TextStyle(
                        //           fontSize: 16.0,
                        //           color: AppColors.putih,
                        //           fontWeight: FontWeight.normal)),
                        )),
                  ],
                )
              ]),

              ReMessageInputWidget(
                socket: socket,
              ),
              // TextButton(
              //     onPressed: () {
              //       try {
              //         socket?.send(jsonEncode({"data": "baru"}));
              //       } catch (e) {
              //         print(e.toString());
              //         // print(e);
              //       }
              //     },
              //     child: Text("test"))
            ]),
      ),
      // Text(listMessage.toString())
    );
  }

  @override
  void dispose() {
    socket?.close();
    super.dispose();
  }
}

PopupMenuItem _buildPopupMenuItem(
    String title, IconData iconData, int position) {
  return PopupMenuItem(
    textStyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
      fontSize: 16,
    )),
    value: position,
    child: Row(
      children: [
        Icon(
          iconData,
          color: AppColors.pinkMerah,
        ),
        const SizedBox(width: 10),
        Text(
          title,
        ),
      ],
    ),
  );
}
