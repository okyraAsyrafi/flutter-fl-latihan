import 'package:flutter/material.dart';
import 'package:shamo_tryit/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        backgroundColor: secondaryColor,
        onPressed: () {},
        child: Image.asset(
          'images/cart_icon.png',
          width: 20,
        ),
      );
    }

    Widget customNavBar() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: bgColor4,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: '',
                icon: Image.asset(
                  'images/home_icon.png',
                  width: 21,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Image.asset(
                  'images/chat_icon.png',
                  width: 20,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Image.asset(
                  'images/favourite_icon.png',
                  width: 21,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Image.asset(
                  'images/profile_icon.png',
                  width: 18,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor1,
      body: Center(child: Text('Main Page')),
      bottomNavigationBar: customNavBar(),
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
