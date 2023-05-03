import 'package:flutter/material.dart';

class SortTwo extends StatefulWidget {
  @override
  _SortTwoState createState() => _SortTwoState();
}

class _SortTwoState extends State<SortTwo> {
  Color checkcolor = Color(0xffE0DAD1);
  TextEditingController _searchQueryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 60,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: TextField(
            controller: _searchQueryController,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onChanged: (query) {
              // Do something with the search query
              print(query);
            },
          ),
        ),
        screenonerightpart("4 & Up"),
        screenonerightpart("3 & Up"),
        screenonerightpart("2 & Up"),
        screenonerightpart("1 & Up"),
      ],
    );
  }

  Container screenonerightpart(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 224, 224, 224),
            width: 1,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 1, horizontal: 2),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  checkcolor = Color.fromARGB(255, 17, 162, 63);
                });
              },
              icon: Icon(
                Icons.check_circle,
                color: checkcolor,
              )),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 20,
              fontFamily: "Poppins",
            ),
          ),
        ],
      ),
    );
  }
}
