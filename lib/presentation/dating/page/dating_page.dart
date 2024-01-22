import 'package:bogopa_mobile/core/constants/colors.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_logger/simple_logger.dart';

import '../../../core/assets/assets.gen.dart';
import '../widget/modal_list.dart';
import 'list_dating_page.dart';

final logger = SimpleLogger();

class DatingPage extends StatefulWidget {
  const DatingPage({super.key});

  @override
  State<DatingPage> createState() => _DatingPageState();
}

class _DatingPageState extends State<DatingPage> {
  List<Container> cards = [
    Container(
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      child: ClipRRect(
        child: SizedBox.fromSize(
          size: const Size.fromRadius(400),
          child: Assets.images.c1.image(
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      child: ClipRRect(
        child: SizedBox.fromSize(
          size: const Size.fromRadius(400),
          child: Assets.images.c2.image(
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    ),
  ];

  final controller = CardSwiperController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.putih,
      appBar: AppBar(
        backgroundColor: AppColors.putih,
        leading: Builder(builder: (BuildContext context) {
          return const ModalList();
          // IconButton(
          //   icon: const Badge(
          //       label: Text(
          //         'VIP',
          //         style: TextStyle(color: AppColors.coklat),
          //       ),
          //       backgroundColor: Colors.yellow,
          //       child: Icon(
          //         Icons.settings_backup_restore,
          //         color: AppColors.coklat,
          //       )),
          //   onPressed: () {
          //     Scaffold.of(context).openDrawer();
          //   },
          // );
        }),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Get.to(const ListDating(
                data: '',
              ));
            },
            child: Assets.icons.list.svg(
                height: 24,
                width: 24,
                // ignore: deprecated_member_use_from_same_package
                color: AppColors.coklat),
          )
        ],
        title: Center(
          child: Text(
            'BOGOPA',
            softWrap: false,
            overflow: TextOverflow.fade,
            style: GoogleFonts.ranchers(
                textStyle: const TextStyle(
                    fontSize: 26.0,
                    color: AppColors.pinkMerah,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Column(
          children: [
            Flexible(
              child: CardSwiper(
                controller: controller,
                cardsCount: cards.length,
                cardBuilder:
                    (context, index, percentThresholdX, percentThresholdY) =>
                        cards[index],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 10),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        controller.swipeLeft();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: Colors.grey, // <-- Button color
                        foregroundColor: Colors.red, // <-- Splash color
                      ),
                      child: const Icon(
                        Icons.close,
                        color: AppColors.putih,
                        size: 40.0,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.swipeTop();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: Colors.grey, // <-- Button color
                        foregroundColor: Colors.pink, // <-- Splash color
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: AppColors.pink,
                        size: 70.0,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.swipeRight();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: Colors.grey, // <-- Button color
                        foregroundColor: Colors.green, // <-- Splash color
                      ),
                      child: const Icon(
                        Icons.star,
                        color: AppColors.putih,
                        size: 40.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
