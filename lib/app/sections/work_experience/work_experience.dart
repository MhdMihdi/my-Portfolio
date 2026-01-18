import 'package:flutter/material.dart';
import 'work_experience_desktop.dart';
import 'work_experience_mobile.dart';
import 'package:my_portfolio/core/res/responsive.dart';

class WorkExperience extends StatelessWidget {
  const WorkExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: WorkExperienceMobileTab(),
      tablet: WorkExperienceMobileTab(),
      desktop: WorkExperienceDesktop(),
    );
  }
}
