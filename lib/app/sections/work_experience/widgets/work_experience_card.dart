import 'package:flutter/material.dart';

import 'package:my_portfolio/app/utils/work_experience_utils.dart';
import 'package:my_portfolio/app/widgets/store_icon.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/res/responsive.dart';
import 'package:my_portfolio/core/util/constants.dart';
import 'package:sizer/sizer.dart';

class WorkExperienceCard extends StatefulWidget {
  final WorkExperienceUtils experience;

  const WorkExperienceCard({super.key, required this.experience});

  @override
  State<WorkExperienceCard> createState() => _WorkExperienceCardState();
}

class _WorkExperienceCardState extends State<WorkExperienceCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: Responsive.isDesktop(context) ? 50.w : 90.w,
        margin: EdgeInsets.symmetric(vertical: 1.5.h),
        padding: EdgeInsets.all(2.h),
        decoration: BoxDecoration(
          gradient: grayBack,
          borderRadius: BorderRadius.circular(14),
          boxShadow: isHover
              ? [primaryColorShadow]
              : [blackColorShadow],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Position + Company
            Text(
              '${widget.experience.position} — ${widget.experience.company}',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 0.4.h),

            /// Location & Period
            Text(
              '${widget.experience.location} | ${widget.experience.period}',
              style: theme.textTheme.bodySmall,
            ),

            SizedBox(height: 1.5.h),

            /// Responsibilities
            ...widget.experience.responsibilities.map(
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
              spacing: 8,
              runSpacing: 8,
              children: widget.experience.technologies
                  .map(
                    (tech) => Chip(
                  label: Text(
                    tech,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              )
                  .toList(),
            ),

            SizedBox(height: 1.2.h),

            /// Links
            Row(
              children: widget.experience.links.entries.map((entry) {
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
      ),
    );
  }
}
