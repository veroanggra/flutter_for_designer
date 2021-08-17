import 'package:chatty/widget/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;
  final String date;
  final bool unread;

  const ChatTile(
      {this.imageUrl, this.name, this.message, this.date, this.unread});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageUrl,
          width: 55,
          height: 55,
        ),
        Container(
          margin: EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: titleTextStyle),
              SizedBox(height: 2),
              Text(message,
                  style: unread ? darkSubTitleTextStyle : subTitleStyle),
            ],
          ),
        ),
        Spacer(),
        Text(date, style: subTitleStyle)
      ],
    );
  }
}
