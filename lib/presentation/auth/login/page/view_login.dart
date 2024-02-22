import 'package:bogopa_mobile/core/assets/assets.gen.dart';
import 'package:bogopa_mobile/core/constants/colors.dart';
import 'package:bogopa_mobile/presentation/auth/login/page/view_form_phone.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../dashboard_page/dashboard_page.dart';

// import 'package:get/get.dart';

class ViewLogin extends StatefulWidget {
  const ViewLogin({super.key});

  @override
  State<ViewLogin> createState() => _ViewLoginState();
}

class _ViewLoginState extends State<ViewLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.putih,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      Assets.images.logoFoto.image(
                        width: 180,
                        height: 170,
                        fit: BoxFit.scaleDown,
                      ),
                      Text(
                        'BOGOPA',
                        softWrap: false,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.ranchers(
                            textStyle: const TextStyle(
                                fontSize: 18.0,
                                color: AppColors.coklat,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                Get.to(const FormPhone(data: ''),
                                    transition: Transition.noTransition);
                              },
                              child: SizedBox(
                                child: Row(
                                  children: [
                                    Assets.icons.phone.svg(
                                      width: 45,
                                      height: 45,
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(left: 10)),
                                    Text(
                                      'Lanjutkan dengan seluler',
                                      softWrap: false,
                                      overflow: TextOverflow.fade,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 16,
                                              color: AppColors.coklat,
                                              fontWeight: FontWeight.normal)),
                                    )
                                  ],
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 60.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                Get.to(const DashboardPage(
                                  key: Key(''),
                                  currentTab: 0,
                                ), transition: Transition.noTransition);
                              },
                              child: Row(
                                children: [
                                  Assets.icons.google.svg(
                                    width: 45,
                                    height: 45,
                                  ),
                                  const Padding(
                                      padding: EdgeInsets.only(left: 10)),
                                  Text(
                                    'Lanjutkan dengan Google',
                                    softWrap: false,
                                    overflow: TextOverflow.fade,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 16,
                                            color: AppColors.coklat,
                                            fontWeight: FontWeight.normal)),
                                  )
                                ],
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                // TextButton(
                //     style: const ButtonStyle(
                //         backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                //     onPressed: () => {
                //           Get.to(const DashboardPage(
                //             key: Key(''),
                //             currentTab: 0,
                //           ))
                //         },
                //     child: const Text("kesana")),
              ]),
        ),
      ),
    );
  }
}
