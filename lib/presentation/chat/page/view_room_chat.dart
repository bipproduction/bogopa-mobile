import 'package:bogopa_mobile/presentation/chat/page/menu_user_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';
import '../widget/input_cht_coba.dart';
import 'view_info_profile_user.dart';

enum Options { edit, hapus, putuskan }

class ViewRoomChatPage extends StatelessWidget {
  const ViewRoomChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.putih,
      body: RoomChatPage(),
    );
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
                  _buildPopupMenuItem(
                      'Edit Alias', Icons.edit, Options.edit.index),
                  _buildPopupMenuItem('Hapus Riwayat Obrolan',
                      Icons.speaker_notes_off, Options.hapus.index),
                  _buildPopupMenuItem(
                      'Putuskan', Icons.close, Options.putuskan.index),
                ],
              )),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              BodyChat(),
              ReMessageInputWidget()
            ]),
      ),
    );
  }
}
class BodyChat extends StatelessWidget {
  const BodyChat({
    super.key,
  });

//listview

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SizedBox(
        // height: 590,
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
                  radius: 25,
                  backgroundImage:
                      NetworkImage('https://i.pravatar.cc/100?img=4'),
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
                  radius: 25,
                  backgroundImage:
                      NetworkImage('https://i.pravatar.cc/100?img=1'),
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
                  radius: 25,
                  backgroundImage:
                      NetworkImage('https://i.pravatar.cc/100?img=1'),
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

