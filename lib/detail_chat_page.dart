import 'package:flutter/material.dart';
import 'package:shamo_tryit/pages/Widget/chat_bubble.dart';
import 'package:shamo_tryit/theme.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSize header() {
      return PreferredSize(
        child: AppBar(
          backgroundColor: bgColor1,
          title: Row(
            children: [
              Image.asset(
                'images/logo_online.png',
                height: 50,
                width: 50,
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shoe Store',
                    style: primaryTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  ),
                  Text(
                    'Online',
                    style: secondaryTextStyle.copyWith(
                        fontSize: 14, fontWeight: light),
                  ),
                ],
              )
            ],
          ),
        ),
        preferredSize: Size.fromHeight(70),
      );
    }

    Widget productPreview() {
      return Container(
        width: 225,
        height: 74,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: bgColor7,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'images/shoes_hiking_55.png',
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'COURT VISIO...',
                    style: primaryTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2),
                  Text(
                    '\$57,15',
                    style: priceTextStyle.copyWith(fontWeight: medium),
                  )
                ],
              ),
            ),
            Image.asset(
              'images/x_button.png',
              height: 22,
            ),
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            productPreview(),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: bgColor4),
                    child: Center(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Type Message...',
                            hintStyle: subtittleTextStyle),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Image.asset(
                  'images/send_button.png',
                  height: 45,
                  width: 45,
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: marginDefault,
        ),
        children: [
          ChatBubble(
            text: 'Hi, This item is still available?',
            isSender: true,
            hasProduct: true,
          ),
          ChatBubble(
            text: 'Good night, This item is only available in size 42 and 43',
            isSender: false,
          ),
          ChatBubble(
            text: 'Owww, it suits me very well',
            isSender: true,
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
      body: content(),
      bottomNavigationBar: chatInput(),
    );
  }
}
