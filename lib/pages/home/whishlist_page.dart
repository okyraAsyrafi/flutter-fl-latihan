import 'package:flutter/material.dart';
import 'package:shamo_tryit/pages/Widget/whistlist_card.dart';
import 'package:shamo_tryit/theme.dart';

class WhishlistPage extends StatelessWidget {
  const WhishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          'Favorite Shoes',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget emptyWhislist() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: bgColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: secondaryColor,
                size: 74,
              ),
              SizedBox(height: 23),
              Text(
                ' You don\'t have dream shoes?',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Let\'s find your favorite shoes',
                style: secondaryTextStyle,
              ),
              SizedBox(height: 30),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                  ),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget whishList() {
      return Expanded(
        child: Container(
          color: bgColor3,
          width: double.infinity,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: marginDefault),
            children: <Widget>[
              WhishlistCard(),
              WhishlistCard(),
              WhishlistCard(),
              WhishlistCard(),
              WhishlistCard(),
              WhishlistCard(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: <Widget>[
        header(),
        // emptyWhislist(),
        whishList(),
      ],
    );
  }
}
