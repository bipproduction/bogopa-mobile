import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/colors.dart';
import '../../auth/login/page/view_login.dart';

class CustomDialogLogout extends StatelessWidget {
  const CustomDialogLogout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Dialog(
      child: LogoutDialog(),
    );
  }
}

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 236,
      decoration: BoxDecoration(
          color: AppColors.putih, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          const CircleAvatar(
            radius: 44,
            backgroundColor: AppColors.pink,
            child: CircleAvatar(
                radius: 40,
                backgroundImage:
                    NetworkImage('https://i.pravatar.cc/200?img=4')),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Apakah Yakin Ingin Keluar?',
            softWrap: false,
            overflow: TextOverflow.fade,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 16.0,
                    color: AppColors.pinkMerah,
                    fontWeight: FontWeight.normal)),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 80,
                    height: 30,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.pinkMerah),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        'TIDAK',
                        softWrap: false,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 15.0,
                                color: AppColors.pinkMerah,
                                fontWeight: FontWeight.normal)),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Get.to(const ViewLogin(),
                        transition: Transition.noTransition);
                  },
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width / 2 - 80,
                    decoration: BoxDecoration(
                        color: AppColors.pinkMerah,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        'YA',
                        softWrap: false,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 15.0,
                                color: AppColors.putih,
                                fontWeight: FontWeight.normal)),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
