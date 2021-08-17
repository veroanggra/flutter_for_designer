import 'package:chatty/widget/theme.dart';
import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String imageUser;
  final String message;
  final String time;

 ChatMessage({this.imageUser, this.message, this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 30),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Image.asset(
              imageUser,
              height: 40,
              width: 40,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 12),
            decoration: BoxDecoration(
                color: Color(0xFFEBEFF3),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message,
                    style: lightTitleTextStyle,
                  ),
                  Text(time, style: lightTitleTextStyle)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
