import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/sections/work_experience/widgets/work_experience_card_mobile.dart';
import 'package:my_portfolio/app/utils/work_experience_utils.dart';
import 'package:my_portfolio/app/widgets/custom_text_heading.dart';
import 'package:my_portfolio/app/widgets/snack_bar.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:sizer/sizer.dart';

class WorkExperienceMobileTab extends StatelessWidget {
  const WorkExperienceMobileTab({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomSectionHeading(text: "\nWork Experience"),
        Space.y(5.w)!,
        CarouselSlider.builder(
          itemCount: workExperiences.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: WorkExperienceCardMobile(experience: workExperiences[i]),
          ),
          options: CarouselOptions(
            height: height * 0.70,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
        Space.y(3.w)!,

      ],
    );
  }
}
