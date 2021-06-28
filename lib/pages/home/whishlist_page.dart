import 'package:flutter/material.dart';
import 'package:shamo_tryit/theme.dart';

class WhishlistPage extends StatelessWidget {
  const WhishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Whislist Page',
        style: primaryTextStyle,
      ),
    );
  }
}
