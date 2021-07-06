import 'package:flutter/material.dart';
import 'package:shamo_tryit/theme.dart';

class WhishlistCard extends StatelessWidget {
  const WhishlistCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: bgColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.fromLTRB(12, 10, 12, 14),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'images/shoes_training_31.png',
              width: 60,
              height: 60,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Terrex Urban Low',
                  style: primaryTextStyle.copyWith(fontWeight: semiBold),
                ),
                SizedBox(height: 2),
                Text(
                  '\$143,98',
                  style: priceTextStyle,
                ),
              ],
            ),
          ),
          Container(
            height: 34,
            width: 34,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: secondaryColor),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 12,
            ),
          )
        ],
      ),
    );
  }
}
