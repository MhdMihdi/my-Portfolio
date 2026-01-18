import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/work_experience_utils.dart';
import 'package:my_portfolio/app/widgets/custom_text_heading.dart';
import 'package:my_portfolio/app/widgets/snack_bar.dart';
import 'package:my_portfolio/changes/strings.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:sizer/sizer.dart';

import 'widgets/work_experience_card.dart';

class WorkExperienceDesktop extends StatefulWidget {
  const WorkExperienceDesktop({super.key});

  @override
  State<WorkExperienceDesktop> createState() => _WorkExperienceDesktopState();
}

class _WorkExperienceDesktopState extends State<WorkExperienceDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 8),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nWork Experience"),
          Space.y(2.w)!,
          Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            runSpacing: 3.w,
            children: workExperiences
                .asMap()
                .entries
                .map(
                  (e) => WorkExperienceCard(experience: e.value),
                )
                .toList(),
          ),
          Space.y(3.w)!,

        ],
      ),
    );
  }
}
