import 'package:flutter/material.dart';
import 'package:login_aadi/screens/Cavity_Screen/chatscreens/chat.dart';

import '../../../utils/colors/colors.dart';
import '../../../utils/responsive.dart';
import 'global.dart';

class chatWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TextFormField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            isDense: true,
            contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 0),
            hintText: "Search",
            hintStyle: TextStyle(fontFamily: 'Roboto', color: Colors.black),
            prefixIcon: Icon(Icons.search, color: Colors.black),
            suffixIcon: Icon(Icons.clear, color: Colors.black),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: grey2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: grey2),
            ),
          ),
        ),
        actions: [
          Center(child: Text("Cancel")),
        ],
      ),
      body: ListView.builder(
        itemCount: friendsList.length,
        itemBuilder: (ctx, i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => ChatScreen())));
              },
              child: Container(
                width: getWidth(context) / 1.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: White,
                ),
                child: ListTile(
                    // isThreeLine: true,
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/Group 2857.png"),
                    ),
                    title: Text(
                      "${friendsList[i]['username']}",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    subtitle: Text(
                      "${friendsList[i]['lastMsg']}",
                      style:
                          TextStyle(fontFamily: 'Roboto', color: Colors.black),
                    ),
                    trailing: CircleAvatar(
                      backgroundColor: Cprimary,
                      child: Icon(Icons.add),
                    )),
              ),
            ),
          );
        },
      ),
    );
  }
}
