import 'package:flutter/material.dart';
import 'package:shamo_tryit/theme.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.fromLTRB(marginDefault, 0, marginDefault, marginDefault),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'images/shoes_running_6.png',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Footbal',
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(height: 6),
                Text(
                  'Predator 20.3 Firm Ground',
                  style: primaryTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 16),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 6),
                Text(
                  '\$68,47',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
