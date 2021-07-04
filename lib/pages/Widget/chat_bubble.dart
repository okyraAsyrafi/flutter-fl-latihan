import 'package:flutter/material.dart';
import 'package:shamo_tryit/theme.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  const ChatBubble({this.text = '', this.isSender = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: marginDefault),
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.6),
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: isSender ? bgColor7 : bgColor4,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(isSender ? 12 : 0),
                  topRight: Radius.circular(isSender ? 0 : 12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Text(
                text,
                style: primaryTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
