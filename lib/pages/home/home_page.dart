import 'package:flutter/material.dart';
import 'package:shamo_tryit/Widget/product_card.dart';
import 'package:shamo_tryit/Widget/product_tile.dart';
import 'package:shamo_tryit/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.fromLTRB(marginDefault, marginDefault, marginDefault, 0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Hallo, Alex',
                    style: primaryTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  ),
                  Text(
                    '@alexkeinn',
                    style: subtittleTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/photo_default.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(top: marginDefault),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(right: 16, left: 30),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'All Shoes',
                  style: primaryTextStyle.copyWith(fontWeight: medium),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: transparentColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: subtittleTextColor),
                ),
                child: Text(
                  'Running',
                  style: subtittleTextStyle.copyWith(fontWeight: medium),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: transparentColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: subtittleTextColor),
                ),
                child: Text(
                  'Training',
                  style: subtittleTextStyle.copyWith(fontWeight: medium),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: transparentColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: subtittleTextColor),
                ),
                child: Text(
                  'Basketball',
                  style: subtittleTextStyle.copyWith(fontWeight: medium),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: transparentColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: subtittleTextColor),
                ),
                child: Text(
                  'Hiking',
                  style: subtittleTextStyle.copyWith(fontWeight: medium),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget popularProductTitle() {
      return Container(
        margin: EdgeInsets.only(left: marginDefault, top: marginDefault),
        child: Text(
          'Popular Products',
          style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
        ),
      );
    }

    Widget popularProduct() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              SizedBox(width: 30),
              CardProduct(),
              CardProduct(),
              CardProduct(),
              CardProduct(),
              CardProduct(),
            ],
          ),
        ),
      );
    }

    Widget newArrivalsTitle() {
      return Container(
        margin: EdgeInsets.only(left: marginDefault, top: marginDefault),
        child: Text(
          'New Arrivals',
          style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: Column(
          children: [
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        popularProductTitle(),
        popularProduct(),
        newArrivalsTitle(),
        newArrivals(),
      ],
    );
  }
}
