import 'package:flutter/material.dart';
import 'package:shamo_tryit/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  Widget header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Text(
            'Login',
            style:
                primaryTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
          ),
        ),
        Text(
          'Sign In to Countinue',
          style: subtittleTextStyle,
        )
      ],
    );
  }

  Widget emailInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 70),
          child: Text(
            "Email Address",
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
        ),
        SizedBox(height: 12),
        Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
              color: bgColor2, borderRadius: BorderRadius.circular(12.0)),
          child: Row(
            children: <Widget>[
              Image.asset(
                'images/email_icon.png',
                height: 12,
                width: 17,
              ),
              SizedBox(width: 16),
              Expanded(
                  child: TextFormField(
                style: primaryTextStyle,
                decoration: InputDecoration.collapsed(
                  hintText: 'Your Email Address',
                  hintStyle: subtittleTextStyle,
                ),
              ))
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: marginDefault),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[header(), emailInput()],
          ),
        ),
      ),
    );
  }
}
