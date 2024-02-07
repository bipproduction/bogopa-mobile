import 'package:bogopa_mobile/core/constants/colors.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_logger/simple_logger.dart';

import '../../../core/assets/assets.gen.dart';
import '../widget/modal_list.dart';
import 'list_dating_page.dart';
import 'view_berjodoh.dart';

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
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Assets.images.c1.image(
                fit: BoxFit.scaleDown,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    child: Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 30, left: 25, right: 25),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  color: AppColors.pink,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, bottom: 15, right: 20, left: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            children: [
                                              Text(
                                                'ECA AURA',
                                                softWrap: false,
                                                overflow: TextOverflow.fade,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                        fontSize: 17.0,
                                                        color: AppColors.coklat,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                              const SizedBox(width: 10),
                                              Text(
                                                '20',
                                                softWrap: false,
                                                overflow: TextOverflow.fade,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                        fontSize: 18.0,
                                                        color: AppColors.coklat,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            'Denpasar Barat',
                                            softWrap: false,
                                            overflow: TextOverflow.fade,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontSize: 13.0,
                                                    color: AppColors.coklat,
                                                    fontWeight:
                                                        FontWeight.normal)),
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(0),
                                        child: Icon(
                                          Icons.person,
                                          color: AppColors.pinkMerah,
                                          size: 50.0,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
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
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Assets.images.c2.image(
                fit: BoxFit.scaleDown,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    child: Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 30, left: 25, right: 25),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  color: AppColors.pink,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, bottom: 15, right: 20, left: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            children: [
                                              Text(
                                                'NOT NOT',
                                                softWrap: false,
                                                overflow: TextOverflow.fade,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                        fontSize: 17.0,
                                                        color: AppColors.coklat,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                              const SizedBox(width: 10),
                                              Text(
                                                '21',
                                                softWrap: false,
                                                overflow: TextOverflow.fade,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                        fontSize: 17.0,
                                                        color: AppColors.coklat,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            'Denpasar Timur',
                                            softWrap: false,
                                            overflow: TextOverflow.fade,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontSize: 13.0,
                                                    color: AppColors.coklat,
                                                    fontWeight:
                                                        FontWeight.normal)),
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(0),
                                        child: Icon(
                                          Icons.person,
                                          color: AppColors.pinkMerah,
                                          size: 50.0,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
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
        }),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Get.to(
                  const ListDating(
                    data: '',
                  ),
                  transition: Transition.noTransition);
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
                        Get.to(const ViewJodoh());
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
