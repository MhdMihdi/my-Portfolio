import 'package:my_portfolio/app/sections/home/widgets/animation_text.dart';
import 'package:my_portfolio/app/widgets/custom_outline.dart';
import 'package:my_portfolio/core/res/responsive_size.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/widgets/color_chage_btn.dart';
import 'package:my_portfolio/changes/img.dart';
import 'package:my_portfolio/changes/links.dart';
import 'package:my_portfolio/changes/strings.dart';
import 'package:my_portfolio/core/animations/entrance_fader.dart';
import 'package:my_portfolio/core/configs/configs.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return SizedBox(
      height: 80.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.h),
              width: 55.w,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(hellotag,
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w100,
                            )),
                        EntranceFader(
                          offset: const Offset(0, 0),
                          delay: const Duration(seconds: 2),
                          duration: const Duration(milliseconds: 800),
                          child: Image.asset(StaticImage.hi, height: 40),
                        ),
                      ],
                    ),
                  ),
                  Space.y(0.5.w)!,
                  Expanded(
                    child: Text(yourname,
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text("A ",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                            )),
                        AnimatedTextKit(
                          isRepeatingAnimation: true,
                          repeatForever: true,
                          animatedTexts: desktopList,
                        ),
                      ],
                    ),
                  ),
                  Space.y(1.5.w)!,
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Text(miniDescription,
                        style: TextStyle(
                          fontSize: isFontSize(context, 20),
                          fontWeight: FontWeight.w400,
                          color: theme.textColor.withOpacity(0.6),
                        )),
                  ),
                  Space.y(1.w)!,
                  Expanded(
                    child: ColorChageButton(
                      text: 'download cv',
                      onTap: () {
                        html.window.open(resume, "pdf");
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: SizedBox(
              width: size.width / 4,
              height: size.width / 4,
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
            )),
          ],
        ),
      ),
    );
  }
}
