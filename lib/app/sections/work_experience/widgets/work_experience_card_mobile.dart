import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/work_experience_utils.dart';
import 'package:my_portfolio/app/widgets/store_icon.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:my_portfolio/core/res/responsive.dart';
import 'package:my_portfolio/core/util/constants.dart';
import 'package:sizer/sizer.dart';

class WorkExperienceCardMobile extends StatelessWidget {
  final WorkExperienceUtils experience;

  const WorkExperienceCardMobile({
    super.key,
    required this.experience,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: 90.w,
      margin: EdgeInsets.symmetric(vertical: 1.5.h),
      padding: EdgeInsets.all(2.h),
      decoration: BoxDecoration(
        gradient: grayBack,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [blackColorShadow],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Position + Company
          Text(
            '${experience.position} — ${experience.company}',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 0.4.h),

          /// Location & Period
          Text(
            '${experience.location} | ${experience.period}',
            style: theme.textTheme.bodySmall,
          ),

          SizedBox(height: 1.4.h),

          /// Responsibilities
          ...experience.responsibilities.map(
                (item) => Padding(
              padding: EdgeInsets.only(bottom: 0.6.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('•  '),
                  Expanded(
                    child: Text(
                      item,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 1.2.h),

          /// Tech Stack
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: experience.technologies
                .map(
                  (tech) => Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: primaryColor.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  tech,
                  style: const TextStyle(fontSize: 11),
                ),
              ),
            )
                .toList(),
          ),

          SizedBox(height: 1.2.h),

          /// Links
          if (experience.links.isNotEmpty)
            Row(
              children: experience.links.entries.map((entry) {
                return Padding(
                  padding: EdgeInsets.only(right: 1.w),
                  child: TextButton.icon(
                    onPressed: () => openURL(entry.value),
                    icon: storeIcon(entry.key),
                    label: Text(
                      entry.key,
                      style: const TextStyle(fontSize: 13),
                    ),
                  ),
                );
              }).toList(),
            ),
        ],
      ),
    );
  }
}
