import 'package:flutter/material.dart';
import 'package:login_aadi/screens/Cavity_Screen/chatscreens/chat.dart';

import '../../../utils/colors/colors.dart';
import '../../../utils/responsive.dart';
import 'global.dart';

class searchScreen extends StatefulWidget {
  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEFEFEF),
        appBar: AppBar(
          backgroundColor: White,
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
          title: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 4),
              fillColor: cblack10,
              labelText: 'Search here',
              isDense: true,
              filled: true,
              hintText: "Search'naresh '",
              hintStyle: TextStyle(fontFamily: 'Roboto', color: textColor),
              prefixIcon: Icon(Icons.search, color: iconcolor),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: grey2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: grey2),
              ),
            ),
          ),
          actions: [
            Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Cancel",
                style: TextStyle(fontFamily: 'Roboto', color: Colors.black),
              ),
            )),
          ],
        ),
        body: Container());
  }
}
