import 'package:flutter/material.dart';
import 'package:shamo_tryit/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
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
                  width: 17,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: primaryTextStyle,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Your Email Address',
                      hintStyle: subtittleTextStyle,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      );
    }

    Widget passwordInput() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Text(
              "Password",
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
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
                  'images/password_icon.png',
                  width: 17,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    obscureText: true,
                    style: primaryTextStyle,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Your Password',
                      hintStyle: subtittleTextStyle,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      );
    }

    Widget signInButton() {
      return Container(
        margin: EdgeInsets.only(top: 30.0),
        height: 50,
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Text('Sign In',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium)),
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Don\'t have an account? ',
              style: subtittleTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(
                'Sign Up',
                style:
                    purpleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: marginDefault),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              header(),
              emailInput(),
              passwordInput(),
              signInButton(),
              Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
