import 'package:flutter/material.dart';

class SampleListView extends StatelessWidget {
  SampleListView({super.key});
  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  final List data = [
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=1',
      'name': 'Saras',
      'address': 'Jepara',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=2',
      'name': 'Raden Kumbara',
      'address': 'Semarang',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=3',
      'name': 'Wawan',
      'address': 'Sleman',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=4',
      'name': 'Mulyadi',
      'address': 'Gunung Kidul',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=5',
      'name': 'Wulan',
      'address': 'Bantul',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=6',
      'name': 'Suryono',
      'address': 'Kulonprogo',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(data[index]['photoUrl']),
            title: Text(data[index]['name']),
            subtitle: Text(data[index]['address']),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
            tileColor: Colors.grey[400],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          );
        },
        itemCount: data.length,
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 2,
            color: Colors.grey,
          );
        },
      ),
    );
  }
}
