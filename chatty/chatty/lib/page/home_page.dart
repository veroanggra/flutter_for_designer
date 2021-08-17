import 'package:chatty/widget/chat_tile.dart';
import 'package:chatty/page/room_chat.dart';
import 'package:chatty/widget/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF29CB9E),
        onPressed: () {},
        child: Icon(Icons.add, color: whiteColor),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                Image.asset(
                  'assets/images/profile.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: 20),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: whiteColor),
                ),
                SizedBox(height: 2),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: lightBlueColor),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                      BorderRadius.vertical(top: Radius.circular(40))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text('Friends', style: titleTextStyle),
                      SizedBox(height: 16),
                      ChatTile(
                        imageUrl: 'assets/images/friend1.png',
                        name: 'Joshuer',
                        message: 'Sorry, you’re not my ty...',
                        date: 'Now',
                        unread: true,
                      ),
                      SizedBox(height: 16),
                      ChatTile(
                        imageUrl: 'assets/images/friend2.png',
                        name: 'Gabriella',
                        message: 'I saw it clearly and mig...',
                        date: '2:30',
                        unread: false,
                      ),
                      SizedBox(height: 16),
                      Text('Groups', style: titleTextStyle),
                      SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return RoomChat();
                              }));
                        },
                        child: ChatTile(
                          imageUrl: 'assets/images/group1.png',
                          name: 'Jakarta Fair',
                          message: 'Why does everyone ca...',
                          date: '11:11',
                          unread: false,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                          imageUrl: 'assets/images/group2.png',
                          name: 'Angga',
                          message: 'Here here we can go...',
                          date: '7:11',
                          unread: false),
                      SizedBox(height: 16),
                      ChatTile(
                        imageUrl: 'assets/images/group3.png',
                        name: 'Bentley',
                        message: 'The car which does not...',
                        date: '7:11',
                        unread: false,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
