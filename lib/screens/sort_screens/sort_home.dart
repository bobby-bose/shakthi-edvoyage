import 'package:flutter/material.dart';
import 'package:login_aadi/screens/sort_screens/screen_four.dart';
import 'package:login_aadi/screens/sort_screens/screen_one.dart';
import 'package:login_aadi/screens/sort_screens/screen_three.dart';
import 'package:login_aadi/screens/sort_screens/screen_two.dart';
import '../../utils/colors/colors.dart';
import '../onboarding/screen_1.dart';
import '../onboarding/screen_2.dart';
import '../onboarding/screen_3.dart';
import '../onboarding/screen_4.dart';

class SortHome extends StatefulWidget {
  @override
  State<SortHome> createState() => _SortHomeState();
}

class _SortHomeState extends State<SortHome> {
  int _selectedIndex = 0;
  Widget CurrentWidget = SortOne();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 1) {
        // Display the first widget
        setState(() {
          CurrentWidget = SortOne();
        });
      } else if (_selectedIndex == 2) {
        // Display the second widget
        setState(() {
          setState(() {
            CurrentWidget = SortTwo();
          });
        });
      } else if (_selectedIndex == 3) {
        // Display the second widget
        setState(() {
          setState(() {
            CurrentWidget = SortThree();
          });
        });
      } else if (_selectedIndex == 4) {
        // Display the second widget
        setState(() {
          setState(() {
            CurrentWidget = SortFour();
          });
        });
      } else {
        // Display a default widget if the value is not 1 or 2
        setState(() {
          setState(() {
            CurrentWidget = SortOne();
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 0,
        leading: leadingappbar(),
        title: TextButton(
          onPressed: () {
            // Do something when the text button is pressed
          },
          child: Text(
            'Filter',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                color: Cprimary,
                fontSize: 23.0),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Clear All',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 196, 28, 28),
                  fontSize: 23.0),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildTabItem(1, 'Rating'),
                      _buildTabItem(2, 'Cities'),
                      _buildTabItem(3, 'Ranks '),
                      _buildTabItem(4, 'Affiliations'),
                      Expanded(child: _buildTabItemEmpty()),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: CurrentWidget,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Row(children: [
            sort_bottom_buttom(
                text: "Clear", color: Color.fromARGB(255, 9, 12, 10)),
            sort_bottom_buttom(
                text: "Apply", color: Color.fromARGB(255, 49, 148, 76)),
          ])
        ],
      ),
    );
  }

  Widget _buildTabItem(int index, String title) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color.fromARGB(255, 215, 210, 210),
              width: 2.0,
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Text(
          title,
          style: TextStyle(
            color: _selectedIndex == index
                ? Color.fromARGB(255, 65, 57, 57)
                : Color.fromARGB(255, 64, 62, 62),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget _buildTabItemEmpty() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      color: Colors.grey[300],
      child: Text(
        '',
        style: TextStyle(
          color: Color.fromARGB(255, 64, 62, 62),
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    );
  }
}

// class leadingappbar extends StatelessWidget {
//   const leadingappbar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(

//                 child: Row(

//                   children: [
//                     IconButton(
//                       icon: Icon(
//                         Icons.arrow_back_ios,
//                         size: 23.0,
//                       ),
//                       color: Cprimary,
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                     ),
//                     TextButton(
//                       onPressed: () {
//                         // Do something when the text button is pressed
//                       },
//                       child: Text(
//                         'Filter',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                             fontFamily: "Poppins",
//                             fontWeight: FontWeight.w500,
//                             color: Cprimary,
//                             fontSize: 23.0),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           TextButton(
//             onPressed: () {
//               // Do something when the text button is pressed
//             },
//             child: Text(
//               'Clear all',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   fontFamily: "Poppins",
//                   fontWeight: FontWeight.w500,
//                   color: secondaryColor,
//                   fontSize: 22),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class leadingappbar extends StatelessWidget {
  const leadingappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.arrow_back_ios,
            color: Cprimary,
          ),
        ],
      )),
    );
  }
}

class sort_bottom_buttom extends StatelessWidget {
  var text;
  var color;

  sort_bottom_buttom({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              side: BorderSide(
                  width: 1.0, color: Color.fromARGB(255, 255, 255, 255)),
              backgroundColor: Colors.white,
            ),
            onPressed: () {},
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Text(text,
                    style: TextStyle(
                        color: color,
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700)),
              ),
            )));
  }
}
