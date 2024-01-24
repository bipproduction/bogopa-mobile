import 'package:bogopa_mobile/core/constants/colors.dart';
import 'package:flutter/material.dart';

class SampleListView extends StatelessWidget {
  SampleListView({super.key});
  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  final List data = [
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=1',
      'name': 'Saras',
      'message': 'Assalammulaikum',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=2',
      'name': 'Raden Kumbara',
      'message': 'Selamat Sore',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=3',
      'name': 'Wawan',
      'message': 'Haii',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=4',
      'name': 'Mulyadi',
      'message': 'Selamat Siang',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=5',
      'name': 'Wulan',
      'message': 'Selamat makan',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=6',
      'name': 'Suryono',
      'message': 'Main bola yuk..',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=7',
      'name': 'Suryono',
      'message': 'Main bola yuk..',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=8',
      'name': 'Suryono',
      'message': 'Main bola yuk..',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=9',
      'name': 'Suryono',
      'message': 'Main bola yuk..',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.putih,
      body: ListView.separated(
        padding: const EdgeInsets.all(15),
        itemBuilder: (context, index) {
          return Scrollbar(
            child: SizedBox(
              child: ListTile(
                leading: ClipOval(
                  child: Image.network(data[index]['photoUrl']),
                ),
                title: Text(data[index]['name'], style: const TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text(data[index]['message'], style: const TextStyle(color: Colors.grey),),
                // trailing: IconButton(
                //   icon: const Icon(Icons.more_vert),
                //   onPressed: () {},
                // ),
                tileColor: const Color(0xFFF2DBE2),
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          );
        },
        itemCount: data.length,
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 1,
            color: Colors.white,
          );
        },
      ),
    );
  }
}
