import 'package:bogopa_mobile/presentation/chat/page/menu_user_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';
import 'view_info_profile_user.dart';

enum Options { edit, hapus, putuskan }

class ViewRoomChatPage extends StatelessWidget {
  const ViewRoomChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColors.putih,
          body: RoomChatPage(),
        ));
  }
}

class RoomChatPage extends StatefulWidget {
  const RoomChatPage({super.key});

  @override
  State<RoomChatPage> createState() => _RoomChatPageState();
}

class _RoomChatPageState extends State<RoomChatPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: Column(children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: Assets.icons.back
                                      .svg(height: 38, width: 38),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(const ViewInfoProfileUserPage(),
                                        transition: Transition.noTransition);
                                  },
                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundColor: AppColors.pink,
                                    child: CircleAvatar(
                                      radius: 28,
                                      backgroundImage: NetworkImage(
                                          'https://i.pravatar.cc/100?img=1'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Sarah',
                                            softWrap: false,
                                            overflow: TextOverflow.fade,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontSize: 20.0,
                                                    color: AppColors.coklat,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          const SizedBox(width: 5),
                                          const Icon(
                                            Icons.verified,
                                            color: Colors.blue,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 3),
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
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 105,
                            ),
                            InkWell(
                                onTap: () {
                                  Get.to(const ViewMenuUserPage(),
                                      transition: Transition.noTransition);
                                },
                                // child: const Icon(
                                //   Icons.more_vert,
                                //   size: 26,
                                //   color: AppColors.coklat,
                                // ),
                                child: PopupMenuButton(
                                  itemBuilder: (ctx) => [
                                    _buildPopupMenuItem('Edit Alias',
                                        Icons.edit, Options.edit.index),
                                    _buildPopupMenuItem(
                                        'Hapus Riwayat Obrolan',
                                        Icons.speaker_notes_off,
                                        Options.hapus.index),
                                    _buildPopupMenuItem('Putuskan', Icons.close,
                                        Options.putuskan.index),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Scrollbar(
          child: SizedBox(
            height: 530,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.pinkMerah),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Text('Selamat Malam Kak, Boleh kenalan?',
                            softWrap: false,
                            overflow: TextOverflow.fade,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 11.0,
                                  color: AppColors.putih,
                                  fontWeight: FontWeight.normal),
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const CircleAvatar(
                      radius: 27,
                      backgroundColor: AppColors.pink,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            NetworkImage('https://i.pravatar.cc/100?img=4'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 27,
                      backgroundColor: AppColors.pink,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            NetworkImage('https://i.pravatar.cc/100?img=1'),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.coklat),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Text('Selamat Malam Kak',
                            softWrap: false,
                            overflow: TextOverflow.fade,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 11.0,
                                  color: AppColors.putih,
                                  fontWeight: FontWeight.normal),
                            )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 27,
                      backgroundColor: AppColors.pink,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            NetworkImage('https://i.pravatar.cc/100?img=1'),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.coklat),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Text('Boleh dong kak',
                            softWrap: false,
                            overflow: TextOverflow.fade,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 11.0,
                                  color: AppColors.putih,
                                  fontWeight: FontWeight.normal),
                            )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: const Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.send,
                        color: AppColors.pinkMerah,
                        size: 40,
                      ),
                      hintText: "Message...",
                      hintStyle: TextStyle(color: AppColors.coklat),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.blue)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                Icons.sentiment_neutral,
                size: 45,
                color: AppColors.coklat,
              ),
              Icon(
                Icons.mic,
                size: 45,
                color: AppColors.coklat,
              ),
              Icon(
                Icons.add_circle,
                size: 45,
                color: AppColors.coklat,
              ),
            ],
          ),
        )
      ]),
    );
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
