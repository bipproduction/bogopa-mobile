import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/assets/assets.gen.dart';
import '../../../../core/constants/colors.dart';
import 'view_login_masuk.dart';

class KataSandi extends StatelessWidget {
  const KataSandi({super.key, required this.data});

  final String? data;

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
        body: const SingleChildScrollView(
          child: DatakataSandi(),
        ),
      ),
    );
  }
}

class DatakataSandi extends StatefulWidget {
  const DatakataSandi({super.key});

  @override
  State<DatakataSandi> createState() => _DatakataSandiState();
}

class _DatakataSandiState extends State<DatakataSandi> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Column(
                  children: [
                    Assets.images.logoFoto.image(
                      width: 130,
                      height: 120,
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
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Text(
                      'Masukkan kata sandi Anda',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 16,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.w500)),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Isi kata sandi Anda';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.0)),
                          isDense: true,
                          contentPadding: const EdgeInsets.all(12),
                          labelStyle: const TextStyle(
                            fontSize: 15,
                          ),
                          labelText: 'Masukkan kata sandi'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Isi kata sandi Anda';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.0)),
                          isDense: true,
                          contentPadding: const EdgeInsets.all(12),
                          labelStyle: const TextStyle(
                            fontSize: 15,
                          ),
                          labelText: 'Konfirmasi kata sandi'),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                        Get.to(const LoginMasuk(
                          data: '',
                        ));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        backgroundColor: AppColors.pinkMerah,
                        foregroundColor: AppColors.putih,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                    child: Text('Lanjutkan'.toUpperCase(),
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500))),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
