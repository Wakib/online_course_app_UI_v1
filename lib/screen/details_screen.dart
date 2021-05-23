import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import '../model/best_seller_clipper.dart';
import '../model/course_content.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF5F4EF),
          image: DecorationImage(
            image: AssetImage('assets/images/ux_big.png'),
            alignment: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 50, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset('assets/icons/arrow-left.svg'),
                      ),
                      SvgPicture.asset('assets/icons/more-vertical.svg'),
                    ],
                  ),
                  SizedBox(height: 30),
                  ClipPath(
                    clipper: BestSellerClipper(),
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 10, top: 5, right: 20, bottom: 5),
                      color: kBestSellerColor,
                      child: Text(
                        'BESTSELLER',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Design Thinking',
                    style: kHeadingTextStyle,
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/person.svg'),
                      SizedBox(width: 5),
                      Text(
                        '18k',
                        style: TextStyle(
                          color: kTextColor.withOpacity(.6),
                        ),
                      ),
                      SizedBox(width: 20),
                      SvgPicture.asset('assets/icons/star.svg'),
                      SizedBox(width: 5),
                      Text(
                        '4.8',
                        style: TextStyle(
                          color: kTextColor.withOpacity(.6),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '\$50 ',
                          style: kHeadingTextStyle.copyWith(fontSize: 32),
                        ),
                        TextSpan(
                          text: '\$70',
                          style: TextStyle(
                            color: kTextColor.withOpacity(.6),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20, top: 30, right: 20, bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Course Content',
                            style: kTitleTextStyle,
                          ),
                          SizedBox(height: 30),
                          CourseContent(
                            serialNumber: '01',
                            duration: '5:35 mins',
                            title: 'Welcome to the course',
                            isDone: true,
                          ),
                          CourseContent(
                            serialNumber: '02',
                            duration: '19:04 mins',
                            title: 'Design Thinking - Intro',
                            isDone: true,
                          ),
                          CourseContent(
                            serialNumber: '03',
                            duration: '12:48 mins',
                            title: 'Design Thinking Process',
                          ),
                          CourseContent(
                            serialNumber: '04',
                            duration: '37:54 mins',
                            title: 'Customer Perspective',
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      bottom: 0,
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 50,
                              color: kTextColor.withOpacity(.15),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 25),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.redAccent.withOpacity(.3),
                                ),
                                child: SvgPicture.asset(
                                    'assets/icons/shopping-bag.svg'),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 20),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 25),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: kBlueColor,
                                  ),
                                  child: Text(
                                    'Buy Now',
                                    style: kSubtitleTextStyle.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
