import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/sections/Projects/widgets/project_card_mobile.dart';
import 'package:my_portfolio/app/utils/project_utils.dart';
import 'package:my_portfolio/app/widgets/custom_text_heading.dart';
import 'package:my_portfolio/app/widgets/snack_bar.dart';
import 'package:my_portfolio/changes/strings.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:sizer/sizer.dart';

class ProjectsMobileTab extends StatelessWidget {
  const ProjectsMobileTab({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomSectionHeading(text: "\nProjects"),
        Space.y(3.w)!,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CustomSectionSubHeading(text: protfolioSubHeading),
        ),
        Space.y(5.w)!,
        CarouselSlider.builder(
          itemCount: projectUtils.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: ProjectCardMobile(project: projectUtils[i]),
          ),
          options: CarouselOptions(
            height: height * 0.5,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
        Space.y(3.w)!,
        OutlinedButton(
          onPressed: () => SnackbarUtils.showSnackBar(context, 'Coming soon'),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'See More',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
      ],
    );
  }
}
