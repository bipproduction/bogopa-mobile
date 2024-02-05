import 'package:bogopa_mobile/presentation/profile/widget/card2/button_langganan_2.dart';
import 'package:bogopa_mobile/presentation/profile/widget/card2/harga_langganan_2.dart';
import 'package:bogopa_mobile/presentation/profile/widget/card2/kartu_langganan_2.dart';
import 'package:bogopa_mobile/presentation/profile/widget/card2/list_keuntungan_card2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';
import '../widget/card1/button_langganan_1.dart';
import '../widget/card1/harga_langganan_1.dart';
import '../widget/card1/kartu_langganan_1.dart';
import '../widget/card1/list_keuntungan_card1.dart';
import '../widget/card3/button_langganan_3.dart';
import '../widget/card3/harga_langganan_3.dart';
import '../widget/card3/kartu_langganan_3.dart';
import '../widget/card3/list_keuntungan_card3.dart';

class ViewLanggananPage extends StatelessWidget {
  const ViewLanggananPage({super.key, required this.data});

  final String? data;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: AppColors.putih,
          appBar: AppBar(
            backgroundColor: AppColors.putih,
            leadingWidth: 200,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
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
                  Text(
                    'Langganan',
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
            bottom: PreferredSize(
              preferredSize: const Size(0.0, 120.0),
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TabBar(
                    tabAlignment: TabAlignment.center,
                    isScrollable: true,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 5),
                    indicatorColor: AppColors.putih,
                    unselectedLabelColor: AppColors.coklat,
                    dividerColor: Colors.transparent,
                    tabs: [
                      // ignore: sized_box_for_whitespace
                      Container(
                        height: 120.0,
                        width: 330,
                        child: const Tab(
                          child: KartuLangganan1(),
                        ),
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        height: 120.0,
                        width: 320,
                        child: const Tab(
                          child: KartuLangganan2(),
                        ),
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        height: 120.0,
                        width: 330,
                        child: const Tab(
                          child: KartuLangganan3(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        HargaLangganan1(),
                        SizedBox(height: 5),
                        ListKeuntunganLangganan1()
                      ],
                    ),
                  ),
                  ButtonLangganan1()
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        HargaLangganan2(),
                        SizedBox(height: 5),
                        ListKeuntunganLangganan2()
                      ],
                    ),
                  ),
                  ButtonLangganan2()
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        HargaLangganan3(),
                        SizedBox(height: 10),
                        ListKeuntunganLangganan3()
                      ],
                    ),
                  ),
                  ButtonLangganan3()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class LanggananPage extends StatefulWidget {
//   const LanggananPage({super.key});

//   @override
//   State<LanggananPage> createState() => _LanggananPageState();
// }

// class _LanggananPageState extends State<LanggananPage> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(children:  [
//       Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 15.0),
//         // ignore: avoid_unnecessary_containers
//         child: Container(
//           child:  DefaultTabController(
//             length: 3,
//             child: Scaffold(
//               appBar: AppBar(
//                 bottom: TabBar(
//                   tabs: [
//                     Tab(
//                       child: C,
//                     )
//                   ]
//                 ),
//               )
//             ),
//           ),
//         )
//       ),
//     ]);
//   }
// }
