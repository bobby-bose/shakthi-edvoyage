import 'package:flutter/material.dart';

import '../utils/colors/colors.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.onTap,
    required this.selectindex,
  }) : super(key: key);

  final Function() ?onTap;
  final int selectindex;



  @override
  Widget build(BuildContext context) {
    final labelTextStyle = Theme.of(context)
        .textTheme
        .titleSmall!
        .copyWith(fontFamily: 'Roboto', fontSize: 8.0);
    return SizedBox(
      height: 50.0,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: secondaryColor,
        unselectedItemColor: primaryColor,
        currentIndex: selectindex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedLabelStyle: labelTextStyle,
        unselectedLabelStyle: labelTextStyle,
        onTap: onTap!(),
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/frame.png")),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/diamonds.png")),
            label: 'SEARCH',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/Group 98.png")),
            label: 'CART',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/book.png")),
            label: 'ACCOUNT',
          ),
        ],
      ),
    );
  }
}