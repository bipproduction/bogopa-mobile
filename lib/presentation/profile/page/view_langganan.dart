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
      home: Scaffold(
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
        ),
        body: const LanggananPage(),
        bottomNavigationBar:
            // const ButtonLangganan1(),
            const ButtonLangganan2(),
            // const ButtonLangganan3(),
      ),
    );
  }
}

class LanggananPage extends StatefulWidget {
  const LanggananPage({super.key});

  @override
  State<LanggananPage> createState() => _LanggananPageState();
}

class _LanggananPageState extends State<LanggananPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //card 1
            // KartuLangganan1(),
            // SizedBox(height: 30),
            // HargaLangganan1(),
            // SizedBox(height: 20),
            // ListKeuntunganLangganan1()
            // penutup card 1

            // card 2
            KartuLangganan2(),
            SizedBox(height: 30),
            HargaLangganan2(),
            SizedBox(height: 30),
            ListKeuntunganLangganan2()
            // penutup card 2

             //card 3
            // KartuLangganan3(),
            // SizedBox(height: 30),
            // HargaLangganan3(),
            // SizedBox(height: 20),
            // ListKeuntunganLangganan3()
            // penutup card 3

          ],
        ),
      ),
    ]);
  }
}
