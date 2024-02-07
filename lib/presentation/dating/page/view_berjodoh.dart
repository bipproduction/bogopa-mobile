import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/colors.dart';

class ViewJodoh extends StatelessWidget {
  const ViewJodoh({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Jodoh(),
    );
  }
}

class Jodoh extends StatefulWidget {
  const Jodoh({super.key});

  @override
  State<Jodoh> createState() => _JodohState();
}

class _JodohState extends State<Jodoh> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 35,
                ),
                Text(
                  'BERJODOH!',
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 30.0,
                          color: AppColors.putih,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Anda dan',
                        softWrap: false,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 18.0,
                                color: AppColors.putih,
                                fontWeight: FontWeight.normal)),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Ica Aura ',
                        softWrap: false,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 18.0,
                                color: AppColors.putih,
                                fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Saling menyukai',
                        softWrap: false,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 18.0,
                                color: AppColors.putih,
                                fontWeight: FontWeight.normal)),
                      ),
                    ]),
                const SizedBox(height: 80),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage:
                          NetworkImage('https://i.pravatar.cc/100?img=3'),
                    ),
                    CircleAvatar(
                      radius: 70,
                      backgroundImage:
                          NetworkImage('https://i.pravatar.cc/100?img=1'),
                    ),
                  ],
                ),
                 const SizedBox(height: 10),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.putih,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(style: BorderStyle.none, width: 0),
                              ),
                          isDense: true,
                          contentPadding: const EdgeInsets.all(12),
                          labelStyle: const TextStyle(
                            fontSize: 15,
                          ),
                          labelText: 'Sapa dia'),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Text(
                    'TERUS MENGGESER',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16.0,
                            color: AppColors.putih,
                            fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
