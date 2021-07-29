import 'package:flutter/material.dart';
import 'package:shamo_tryit/theme.dart';

class CartCard extends StatelessWidget {
  const CartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginDefault),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: bgColor4,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage('images/shoes_basketball_39.png'),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Terrex Urban Low',
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      '\$143,98',
                      style: priceTextStyle,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    'images/add_icon.png',
                    width: 16,
                    height: 16,
                  ),
                  SizedBox(height: 2),
                  Text(
                    '2',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(height: 2),
                  Image.asset(
                    'images/min_icon.png',
                    width: 16,
                    height: 16,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Image.asset(
                'images/icon_remove.png',
                width: 10,
                height: 12,
              ),
              SizedBox(width: 4),
              Text(
                'Remove',
                style: alertTextStyle.copyWith(fontSize: 12, fontWeight: light),
              )
            ],
          )
        ],
      ),
    );
  }
}
