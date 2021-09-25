import 'package:cozzy/model/tips_model.dart';
import 'package:cozzy/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final TipsModel tips;
  TipsCard(this.tips);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            child: Image.asset(
              tips.imgURL,
              width: 80,
              height: 80,
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tips.tips,
                  style: primaryStyle.copyWith(fontSize: 18),
                ),
                Text(
                  "Updated ${tips.update}",
                  style: secondaryStyle,
                )
              ],
            ),
          ),
          Image.asset(
            "assets/ic_chevron.png",
            width: 24,
          ),
        ],
      ),
    );
  }
}
