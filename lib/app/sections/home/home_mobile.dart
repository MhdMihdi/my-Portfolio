import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/widgets/color_chage_btn.dart';
import 'package:my_portfolio/app/widgets/custom_outline.dart';
import 'package:my_portfolio/changes/img.dart';
import 'package:my_portfolio/changes/links.dart';
import 'package:my_portfolio/changes/strings.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:my_portfolio/core/res/responsive_size.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;

import 'widgets/animation_text.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(left: 10.w, top: 10.h, right: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                hellotag,
                style: AppText.h3!.copyWith(fontSize: isFontSize(context, 16)),
              ),
              // Space.x!,
              Image.asset(StaticImage.hi, height: 10.sp),
            ],
          ),
          // Space.y(1.w)!,
          Text(
            yourname,
            style: TextStyle(
              fontSize: isFontSize(context, 28),
              fontWeight: FontWeight.w600,
            ),
          ),
          Space.y(1.w)!,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "A ",
                style: TextStyle(
                  fontSize: isFontSize(context, 18),
                  fontWeight: FontWeight.w400,
                ),
              ),
              AnimatedTextKit(
                animatedTexts: mobileList,
                repeatForever: true,
                isRepeatingAnimation: true,
              ),
            ],
          ),

          Space.y(2.w)!,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColorChageButton(
                text: 'download cv',
                onTap: () {
                  html.window.open(resume, "pdf");
                },
              ),
              SizedBox(
                width: size.width / 3,
                height: size.width / 3,
                child: CustomOutline(
                  strokeWidth: 5,
                  radius: size.width * 0.2,
                  padding: const EdgeInsets.all(5),
                  width: size.width * 0.3,
                  height: size.width * 0.3,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        theme.secondaryColor,
                        theme.secondaryColor.withOpacity(0),
                        theme.primaryColor.withOpacity(0.1),
                        theme.primaryColor
                      ],
                      stops: const [
                        0.2,
                        0.4,
                        0.6,
                        1
                      ]),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(0.8),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomLeft,
                        image: AssetImage('assets/imgs/picture.png'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
