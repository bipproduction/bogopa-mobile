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
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://i.pravatar.cc/2000?img=1',
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                    alignment: Alignment.center,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.black.withAlpha(0),
                        Colors.black.withAlpha(0),
                        Colors.black.withAlpha(0),
                        Colors.black
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Sarah Lutfia',
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 16.0,
                                      color: AppColors.putih,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '24',
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 16.0,
                                      color: AppColors.putih,
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
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              'Denpasar Bali',
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 15.0,
                                      color: AppColors.putih,
                                      fontWeight: FontWeight.normal)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        )),
    Container(
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://i.pravatar.cc/2000?img=25',
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                    alignment: Alignment.center,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.black.withAlpha(0),
                        Colors.black.withAlpha(0),
                        Colors.black.withAlpha(0),
                        Colors.black
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Luluh Ani',
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 16.0,
                                      color: AppColors.putih,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '21',
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 16.0,
                                      color: AppColors.putih,
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
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              'Denpasar Bali',
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 15.0,
                                      color: AppColors.putih,
                                      fontWeight: FontWeight.normal)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        )),
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
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.pink,
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                    colors: [
                      AppColors.pink,
                      AppColors.pink,
                      AppColors.pink,
                      AppColors.pinkMerah
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0, 0, 0.1, 1],
                  ),
                ),
                child: Column(
                  children: [
                    Flexible(
                      child: CardSwiper(
                        controller: controller,
                        cardsCount: cards.length,
                        cardBuilder: (context, index, percentThresholdX,
                                percentThresholdY) =>
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
                                backgroundColor:
                                    Colors.white, // <-- Button color
                                foregroundColor: Colors.red, // <-- Splash color
                              ),
                              child: const Icon(
                                Icons.close,
                                color: Colors.red,
                                size: 35,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                controller.swipeTop();
                              },
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(10),
                                backgroundColor:
                                    Colors.white, // <-- Button color
                                foregroundColor:
                                    Colors.pink, // <-- Splash color
                              ),
                              child: const Icon(
                                Icons.favorite,
                                color: AppColors.pinkMerah,
                                size: 50.0,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                controller.swipeRight();
                                Future.delayed(const Duration(seconds: 1), () {
                                  Get.to(const ViewJodoh());
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(10),
                                backgroundColor:
                                    Colors.white, // <-- Button color
                                foregroundColor:
                                    Colors.green, // <-- Splash color
                              ),
                              child: const Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 35,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
