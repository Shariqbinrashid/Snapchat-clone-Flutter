import 'package:flutter/material.dart';
import 'package:snapchat_clone/snapchat_bottomnavbar_option2/Widgets/NewChatWidgets/username_Widget.dart';

class NewChat extends StatefulWidget {
  @override
  _NewChatState createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "New Chat",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child:
                    Icon(Icons.cancel_outlined, color: Colors.blue, size: 28),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15.0),
        child: ListView(
          children: [
            Divider(
              thickness: 0.6,
              height: 0.5,
            ),
            Row(
              children: [
                Text(
                  "To:",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        hintText: "Enter name",
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.supervised_user_circle,
                          color: Colors.blue),
                    ),
                    Text(
                      "New Group",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12),
              child: Text(
                "RECENTS",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            usernameWidget("Faizan"),
            usernameWidget("Danial Ahmad"),
            usernameWidget("Fozan Shahid"),
            usernameWidget("Rao Obaid"),
            usernameWidget("Asad Mukhtar"),
            usernameWidget("Hmmad Asif"),
            usernameWidget("Saad khan"),
            usernameWidget("Ahmed rehman"),
            usernameWidget("M Yousuf"),
            usernameWidget("M talha"),
            usernameWidget("M Shehraz"),
            usernameWidget("Roshan kaleem"),
            usernameWidget("Abdur ur Rehman"),
            usernameWidget("heider"),

          ],
        ),
      ),
    );
  }
}
