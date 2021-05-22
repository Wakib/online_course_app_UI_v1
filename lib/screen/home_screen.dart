import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_course_app_ui_v1/constants.dart';
import 'package:online_course_app_ui_v1/model/category.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 40, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/icons/menu.svg'),
                Image.asset('assets/images/user.png'),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Hey Avro,',
              style: kHeadingTextStyle,
            ),
            Text(
              'Find a course you want to learn',
              style: kSubheadingTextStyle,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: kSearchBarColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/search.svg'),
                    SizedBox(width: 20),
                    Text(
                      'Search for course',
                      style: kSearchBarTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Category',
                  style: kTitleTextStyle,
                ),
                Text(
                  'See All',
                  style: kSeeAllButton,
                ),
              ],
            ),
            // SizedBox(height: 10),
            Expanded(
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                itemCount: categories.length,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                itemBuilder: (context, index) => Container(
                  // Container Look
                  height: index.isEven ? 200 : 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kBlueColor,
                    image: DecorationImage(
                      image: AssetImage(categories[index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // staggeredTileBuilder: (index) =>
                //     StaggeredTile.count(2, index.isEven ? 2 : 1),
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
