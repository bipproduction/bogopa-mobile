import 'package:bogopa_mobile/presentation/chat/page/view_info_profile_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';

class ViewMenuUserPage extends StatelessWidget {
  const ViewMenuUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: AppColors.putih,
            appBar: AppBar(
              backgroundColor: AppColors.putih,
              leading: Builder(
                builder: (BuildContext context) {
                  return TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Assets.icons.back.svg(height: 38, width: 38),
                  );
                },
              ),
            ),
            body: const SingleChildScrollView(child: MenuUserPage())));
  }
}

class MenuUserPage extends StatefulWidget {
  const MenuUserPage({super.key});

  @override
  State<MenuUserPage> createState() => _MenuUserPageState();
}

class _MenuUserPageState extends State<MenuUserPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: InkWell(
              onTap: () {
                Get.to(const ViewInfoProfileUserPage(),
                    transition: Transition.noTransition);
              },
              child: const CircleAvatar(
                radius: 67,
                backgroundColor: AppColors.pink,
                child: CircleAvatar(
                  radius: 65,
                  backgroundImage:
                      NetworkImage('https://i.pravatar.cc/100?img=1'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sarah',
                softWrap: false,
                overflow: TextOverflow.fade,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 20.0,
                        color: AppColors.coklat,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(width: 8),
              const Icon(
                Icons.verified,
                color: Colors.blue,
              ),
            ],
          ),
          const SizedBox(
            height: 43,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.pink,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 25.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.speaker_notes_off,
                      size: 26,
                      color: AppColors.coklat,
                    ),
                    const SizedBox(width: 25),
                    Text(
                      'Hapus riwayat obrolan',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 16.0,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.pink,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 25.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.close,
                      size: 26,
                      color: AppColors.coklat,
                    ),
                    const SizedBox(width: 25),
                    Text(
                      'Putuskan',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 16.0,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
