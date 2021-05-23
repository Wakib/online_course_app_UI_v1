import 'package:flutter/material.dart';
import '../constants.dart';

class CourseContent extends StatelessWidget {
  final String serialNumber;
  final String duration;
  final String title;
  final bool isDone;

  CourseContent(
      {this.serialNumber, this.duration, this.title, this.isDone = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Text(
            serialNumber,
            style: kHeadingTextStyle.copyWith(
              fontSize: 32,
              color: kTextColor.withOpacity(.15),
            ),
          ),
          SizedBox(width: 20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$duration\n',
                  style: TextStyle(
                    color: kTextColor.withOpacity(.6),
                  ),
                ),
                TextSpan(
                  text: title,
                  style: kTitleTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kGreenColor.withOpacity(isDone ? 1 : 0.5),
            ),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
