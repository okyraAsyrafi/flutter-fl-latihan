import 'package:flutter/material.dart';
import 'package:shamo_tryit/Widget/checkout_card.dart';
import 'package:shamo_tryit/theme.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text(
          'Checkout Details',
          style: primaryTextStyle,
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: marginDefault),
        children: [
          SizedBox(height: marginDefault),
          //NOTE:: List Item
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'List Item',
                style:
                    primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              CheckoutCard(),
              CheckoutCard(),
            ],
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: marginDefault),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: bgColor4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Address Details',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
                SizedBox(height: 12),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.asset(
                          'images/store_location.png',
                          width: 40,
                        ),
                        Image.asset(
                          'images/line.png',
                          height: 30,
                        ),
                        Image.asset(
                          'images/icon_location.png',
                          width: 40,
                        )
                      ],
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Store Location',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: light),
                        ),
                        Text(
                          'Adidas Core',
                          style: primaryTextStyle.copyWith(fontWeight: medium),
                        ),
                        SizedBox(height: marginDefault),
                        Text(
                          'Your Address',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: light),
                        ),
                        Text(
                          'Marsemoon',
                          style: primaryTextStyle.copyWith(fontWeight: medium),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),

          // NOTE: Payment Summary
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: marginDefault),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: bgColor4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Payment Summary',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Product Quantity',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '2 Items',
                      style: primaryTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Product Price',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '\$575.96',
                      style: primaryTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Shipping',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Free',
                      style: primaryTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Divider(
                  thickness: 1,
                  color: Color(0xff2E3141),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Total',
                      style: priceTextStyle.copyWith(fontWeight: semiBold),
                    ),
                    Text(
                      '\$575.92',
                      style: priceTextStyle.copyWith(fontWeight: semiBold),
                    ),
                  ],
                )
              ],
            ),
          ),

          //NOTE:: BUTTON CHECKOUT
          SizedBox(height: 30),
          Divider(
            thickness: 1,
            color: Color(0xff2E3141),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: marginDefault),
            width: double.infinity,
            height: 50,
            child: TextButton(
              child: Text(
                'Checkout Now',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/checkout-success', (route) => false);
              },
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
      body: content(),
    );
  }
}
