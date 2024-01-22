import 'package:bogopa_mobile/presentation/chat/widget/bubble_live.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/colors.dart';
import '../widget/view_chat_item.dart';

class ViewChatPage extends StatelessWidget {
  const ViewChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List users = [
      'Della',
      'Isma',
      'Riska',
      'Mawar',
      'Indah',
      "Alifia",
      'Lisa',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.putih,
        appBar: AppBar(
          backgroundColor: AppColors.putih,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                icon: const Badge(
                    label: Text(
                      'VIP',
                      style: TextStyle(color: AppColors.coklat),
                    ),
                    backgroundColor: Colors.yellow,
                    child: Icon(
                      Icons.search,
                      color: AppColors.coklat,
                    )),
                onPressed: () {
                  Get.to(SampleListView());
                },
              ),
            )
          ],
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'CHAT',
                softWrap: false,
                overflow: TextOverflow.fade,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 26.0,
                        color: AppColors.coklat,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15.0),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Rekomendasi',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 16.0,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.bold)),
                    ),
                  ]),
            ),
            Column(
              children: [
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(10),
                    itemBuilder: (context, index) {
                      return BubbleLive(
                        name: users[index],
                        isMe: index == 0 ? true : false,
                      );
                    },
                    itemCount: users.length,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class ChatPage extends StatefulWidget {
//   const ChatPage({super.key});

//   @override
//   State<ChatPage> createState() => _ChatPageState();
// }

// class _ChatPageState extends State<ChatPage> {
//   final List data = [
//     {
//       'photoUrl': 'https://i.pravatar.cc/150?img=1',
//       'name': 'Saras',
//       'address': 'Jepara',
//     },
//     {
//       'photoUrl': 'https://i.pravatar.cc/150?img=2',
//       'name': 'Raden Kumbara',
//       'address': 'Semarang',
//     },
//     {
//       'photoUrl': 'https://i.pravatar.cc/150?img=3',
//       'name': 'Wawan',
//       'address': 'Sleman',
//     },
//     {
//       'photoUrl': 'https://i.pravatar.cc/150?img=4',
//       'name': 'Mulyadi',
//       'address': 'Gunung Kidul',
//     },
//     {
//       'photoUrl': 'https://i.pravatar.cc/150?img=5',
//       'name': 'Wulan',
//       'address': 'Bantul',
//     },
//     {
//       'photoUrl': 'https://i.pravatar.cc/150?img=6',
//       'name': 'Suryono',
//       'address': 'Kulonprogo',
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Column(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.only(bottom: 10.0),
//             child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Rekomendasi',
//                     softWrap: false,
//                     overflow: TextOverflow.fade,
//                     style: GoogleFonts.poppins(
//                         textStyle: const TextStyle(
//                             fontSize: 16.0,
//                             color: AppColors.coklat,
//                             fontWeight: FontWeight.bold)),
//                   ),
//                 ]),
//           ),
//           Column(
//             children: [
//               SizedBox(
//                 height: 90,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   padding: const EdgeInsets.all(10),
//                   itemBuilder: (context, index) {
//                     return BubbleLive(

//                     )
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
