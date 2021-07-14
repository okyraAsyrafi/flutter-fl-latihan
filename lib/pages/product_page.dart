import 'package:flutter/material.dart';
import 'package:shamo_tryit/theme.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Container(
            margin:
                EdgeInsets.symmetric(vertical: 20, horizontal: marginDefault),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.chevron_left,
                    color: bgColor1,
                  ),
                ),
                Icon(
                  Icons.shopping_bag,
                  color: bgColor1,
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
        backgroundColor: bgColor6,
        body: ListView(
          children: [
            header(),
          ],
        ));
  }
}
