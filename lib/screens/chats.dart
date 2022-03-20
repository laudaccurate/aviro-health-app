// @dart=2.9
import 'package:aviro_health_app/providers/globals.dart';
import 'package:aviro_health_app/screens/landingPage.dart';
import 'package:aviro_health_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final globals = Provider.of<Globals>(context);
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Layout(
      screen: Container(
        height: _height * 0.78,
        width: _width * (globals.getsidebarOpened ? 0.85 : 0.88),
        margin: EdgeInsets.symmetric(horizontal: _width * 0.05, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Row(children: [
          Container(
            width: _width * 0.25,
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 25),
            child: Column(children: [
              Text(
                'Chats with Counsellors',
                style: GoogleFonts.comfortaa(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Constants.sidebarColor,
                ),
              ),
              SizedBox(height: 20),
              UnreadChat(
                text: "Good morning, @here. I've been coughing lately",
                senderName: "Jane Cooper",
                time: "4:20 am",
                index: 1,
              ),
              UnreadChat(
                text:
                    "I have been symptomatic including sore throat and bleeding gum. Can I come in before my next due appointment?",
                senderName: "Jenny Wilson",
                time: "4:20 am",
                index: 3,
              ),
              UnreadChat(
                text: "Good morning, @here. I've been coughing lately",
                senderName: "Arlene McCoy",
                time: "4:20 am",
                index: 0,
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Direct Calls',
                    style: GoogleFonts.comfortaa(
                      fontWeight: FontWeight.w600,
                      color: Constants.sidebarColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Constants.sidebarColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://source.unsplash.com/random/200x200?sig=6',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Laura",
                              style: GoogleFonts.comfortaa(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Hawkins (Counsellor)",
                              style: GoogleFonts.comfortaa(
                                fontSize: 10,
                                color: Colors.grey[300],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '5:14',
                              style: GoogleFonts.comfortaa(
                                fontSize: 10,
                                color: Colors.grey[300],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white.withOpacity(0.3),
                        ),
                        child: Icon(
                          Icons.mic,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        height: 30,
                        width: 30,
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white.withOpacity(0.3),
                        ),
                        child: Icon(
                          CupertinoIcons.speaker_2,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        height: 30,
                        width: 30,
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white.withOpacity(0.3),
                        ),
                        child: Icon(
                          Icons.person_add_alt_rounded,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.red,
                              ),
                              child: Icon(
                                CupertinoIcons.phone_down,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
              )
            ]),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                    color: Constants.sidebarColor,
                  ),
                  height: _height * 0.1,
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jenny Wilson',
                            style: GoogleFonts.comfortaa(
                              color: Colors.white,
                              fontSize: 13.5,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 7),
                          Text(
                            'Last login 2 minutes ago',
                            style: GoogleFonts.comfortaa(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                            child: Icon(
                              Icons.mic,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                          SizedBox(width: 12),
                          Container(
                            height: 30,
                            width: 30,
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                            child: Icon(
                              CupertinoIcons.speaker_2,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                          SizedBox(width: 12),
                          Icon(
                            Icons.more_vert_outlined,
                            color: Colors.white,
                            size: 20,
                          )
                        ],
                      ))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(children: [
                    Text(
                      'September 10, 2021',
                      style: GoogleFonts.comfortaa(
                        color: Colors.grey[500],
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 40),
                    ChatItem(isUser: false),
                    ChatItem(isUser: true),
                    ChatItem(isUser: false),
                    ChatItem(isUser: true),
                    ChatItem(isUser: false),
                    ChatItem(isUser: true),
                  ]),
                )
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final bool isUser;
  const ChatItem({Key key, this.isUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment:
          isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment:
              isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Container(
              width: _width * 0.15,
              padding: EdgeInsets.all(13),
              margin: EdgeInsets.only(
                left: isUser ? 0 : 20,
                right: isUser ? 20 : 0,
              ),
              decoration: BoxDecoration(
                color: isUser ? Colors.blue.withOpacity(0.8) : Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(isUser ? 0 : 15),
                    bottomLeft: Radius.circular(isUser ? 15 : 0)),
              ),
              child: Text(
                'I have been symptomatic including sore throat and bleeding gum. Can I come in before my next due appointment?',
                style: GoogleFonts.comfortaa(
                    fontSize: 10,
                    color: isUser ? Colors.white : Colors.grey[400]),
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.only(
                left: isUser ? 0 : 20,
                right: isUser ? 20 : 0,
              ),
              child: Text(
                ' 1:55 pm',
                style: GoogleFonts.comfortaa(
                  fontSize: 9,
                  color: Colors.grey[400],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class UnreadChat extends StatelessWidget {
  final String text;
  final String senderName;
  final int index;
  final String time;

  const UnreadChat({
    Key key,
    this.text,
    this.index,
    this.time,
    this.senderName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(children: [
        Row(
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://source.unsplash.com/random/200x200?sig=$index',
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Text(
              senderName,
              style: GoogleFonts.comfortaa(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[600]),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 8,
                    child: Center(
                      child: Text(
                        '1',
                        style: GoogleFonts.comfortaa(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: GoogleFonts.comfortaa(
            fontSize: 10,
            color: Colors.grey[500],
          ),
        ),
        SizedBox(height: 5),
        Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "4:20 am",
              style: GoogleFonts.comfortaa(
                fontSize: 9,
                color: Colors.grey[400],
              ),
            ))
      ]),
    );
  }
}
