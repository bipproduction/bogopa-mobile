import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';

class ModalList extends StatelessWidget {
  const ModalList({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ViewModalList(),
    );
  }
}

class ViewModalList extends StatelessWidget {
  const ViewModalList({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Badge(
          label: Text(
            'VIP',
            style: TextStyle(color: AppColors.coklat),
          ),
          backgroundColor: Colors.yellow,
          child: Icon(
            Icons.settings_backup_restore,
            color: AppColors.coklat,
          )),
      onPressed: () => _dialogBuilder(context),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.putih,
          title: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end, 
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.close,
                          color: AppColors.coklat,
                          size: 20.0,
                        ),
                      )
                    ]),
                    Text(
                      'UMPAN BALIK',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 20.0,
                              color: AppColors.pinkMerah,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipOval(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(56.0),
                          child: Assets.images.fotoUser.image(
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ])),
          content: const Text(
            'A dialog is a type of modal window that\n'
            'appears in front of app content to\n'
            'provide critical information, or prompt\n'
            'for a decision to be made.',
          ),
        );
      },
    );
  }
}
