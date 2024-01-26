

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';

class ViewPengunjungSayaPage extends StatelessWidget {
  const ViewPengunjungSayaPage({super.key, required this.data});

  final String? data;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: AppColors.putih,
          appBar: AppBar(
            backgroundColor: AppColors.putih,
            title: Text(
              'Siapa Mengunjungi Saya',
              softWrap: false,
              overflow: TextOverflow.fade,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 16.0,
                      color: AppColors.coklat,
                      fontWeight: FontWeight.bold)),
            ),
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
          body: const PengunjungSayaPage()),
    );
  }
}

class PengunjungSayaPage extends StatefulWidget {
  const PengunjungSayaPage({super.key});

  @override
  State<PengunjungSayaPage> createState() => _PengunjungSayaPageState();
}

class _PengunjungSayaPageState extends State<PengunjungSayaPage> {
  final List data = [
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=1',
      'name': 'Saras',
      'message': 'Mengunjungi profil 2 jam lalu',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=2',
      'name': 'Raden Kumbara',
      'message': 'Mengunjungi profil 2 jam lalu',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=3',
      'name': 'Wawan',
      'message': 'Mengunjungi profil 2 jam lalu',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=4',
      'name': 'Mulyadi',
      'message': 'Mengunjungi profil 2 jam lalu',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Scaffold(
        backgroundColor: AppColors.putih,
        body: ListView.separated(
          padding: const EdgeInsets.all(15),
          itemBuilder: (context, index) {
            return Scrollbar(
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: SizedBox(
                  child: ListTile(
                    leading: ClipOval(
                      child: Image.network(data[index]['photoUrl']),
                    ),
                    title: Stack(
                      children: <Widget>[
                        Text(
                          data[index]['name'],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        
                          Container(
                            height: 20,
                            color: Colors.black.withOpacity(1),
                          ),
                        
                      ],
                    ),
                    subtitle: Text(
                      data[index]['message'],
                      style: const TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    trailing: FilledButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColors.pinkMerah)),
                      onPressed: () {},
                      child: Text(
                        'Lihat',
                        softWrap: false,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16.0,
                                color: AppColors.putih,
                                fontWeight: FontWeight.normal)),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: data.length,
          separatorBuilder: (context, index) {
            return const Divider(
              thickness: 0.3,
              color: AppColors.coklat,
            );
          },
        ),
      ),
    );
  }
}
