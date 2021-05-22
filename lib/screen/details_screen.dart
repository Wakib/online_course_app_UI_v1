import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import '../model/best_seller_clipper.dart';

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
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 50, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/icons/arrow-left.svg'),
                  SvgPicture.asset('assets/icons/more-vertical.svg'),
                ],
              ),
              SizedBox(height: 30),
              ClipPath(
                clipper: BestSellerClipper(),
                child: Container(
                  padding:
                      EdgeInsets.only(left: 10, top: 5, right: 20, bottom: 5),
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
      ),
    );
  }
}
