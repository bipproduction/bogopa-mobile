import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/colors.dart';

class ViewChatPage extends StatelessWidget {
  const ViewChatPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                onPressed: () {},
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
        body: const SingleChildScrollView(
          child: ChatPage(),
        ),
      ),
    );
  }
}

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
