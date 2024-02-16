import 'package:flutter/material.dart';
import 'package:travelheba/constants/color_contants.dart';

class BottomNavigationTravelHeba extends StatefulWidget {
  @override
  _BottomNavigationTravelHebaState createState() =>
      _BottomNavigationTravelHebaState();
}

class _BottomNavigationTravelHebaState
    extends State<BottomNavigationTravelHeba> {
  int _selectIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
          color: mFillColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 15,
              offset: Offset(0, 5),
            )
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: _selectIndex == 0
                  ? Icon(
                      Icons.home_outlined,
                      color: mBlueColor,
                    )
                  : Icon(
                      Icons.home_outlined,
                    ),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              )),
          BottomNavigationBarItem(
              icon: _selectIndex == 1
                  ? Icon(
                      Icons.bookmark_border_outlined,
                      color: mBlueColor,
                    )
                  : Icon(
                      Icons.bookmark_border_outlined,
                    ),
              title: Text(
                'My Order',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              )),
          BottomNavigationBarItem(
              icon: _selectIndex == 2
                  ? Icon(
                Icons.list_alt_outlined,
                color: mBlueColor,
              )
                  : Icon(
                Icons.list_alt_outlined,
              ),
              title: Text(
                'Watch List',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              )),
          BottomNavigationBarItem(
              icon: _selectIndex == 3
                  ? Icon(
                Icons.account_circle_outlined,
                color: mBlueColor,
              )
                  : Icon(
                Icons.account_circle_outlined,
              ),
              title: Text(
                'Account',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ))
        ],
        currentIndex: _selectIndex,
        selectedItemColor: mBlueColor,
        unselectedItemColor: mSubtitleColor,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showUnselectedLabels: true,
        elevation: 0,
      ),
    );
  }
}
