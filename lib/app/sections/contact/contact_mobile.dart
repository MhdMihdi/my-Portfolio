import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/contact_utils.dart';
import 'package:my_portfolio/app/widgets/custom_text_heading.dart';
import 'package:my_portfolio/changes/links.dart';
import 'package:my_portfolio/changes/strings.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:my_portfolio/core/util/constants.dart';
import 'package:sizer/sizer.dart';

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Space.y(10.w)!,
          const CustomSectionHeading(text: "\nGet in Touch"),
          Space.y(2.w)!,
          const CustomSectionSubHeading(
            text:
            "If you want to avail my services you can contact me at the links below.",
          ),
          Space.y(5.w)!,

          // --- الكونتينر الرئيسي مثل الديسكتوب ---
          Container(
            padding: EdgeInsets.all(size.width * 0.05).copyWith(bottom: 10),
            decoration: BoxDecoration(
              gradient: theme.contactCard,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [blackColorShadow],
            ),
            child: Column(
              children: [
                // العنوان والنص
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      contactHeadding,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: theme.textColor,
                      ),
                    ),
                    Space.y(2.w)!,
                    Text(
                      contactSubHeadding,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: theme.textColor.withOpacity(0.8),
                      ),
                    ),
                    Space.y(5.w)!,
                  ],
                ),

                // زر Get Started
                InkWell(
                  onTap: () => openURL(whatsapp),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30),
                    decoration: BoxDecoration(
                      gradient: buttonGradi,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: textColor,
                      ),
                    ),
                  ),
                ),

                Space.y(5.w)!,
                Container(color: Colors.white.withOpacity(0.2), height: 1),
                Space.y(5.w)!,

                // أيقونات التواصل
                Wrap(
                  alignment: WrapAlignment.center,
                  runSpacing: 30,
                  spacing: 20,
                  children: contactUtils
                      .asMap()
                      .entries
                      .map((e) => IconButton(
                    icon: Icon(
                      e.value.icon,
                      color: theme.textColor,
                    ),
                    onPressed: () => openURL(e.value.url),
                    highlightColor: Colors.white54,
                    iconSize: 35,
                  ))
                      .toList(),
                ),
              ],
            ),
          ),

          Space.y(10.w)!,
        ],
      ),
    );
  }
}
