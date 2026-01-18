import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/project_utils.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:my_portfolio/core/res/responsive.dart';
import 'package:my_portfolio/core/util/constants.dart';
import 'package:sizer/sizer.dart';

class ProjectCardMobile extends StatefulWidget {
  final ProjectUtils project;

  const ProjectCardMobile({super.key, required this.project});

  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCardMobile> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var theme = Theme.of(context);

    final bool isDesktop = Responsive.isDesktop(context);
    final bool isTouchDevice = !isDesktop; // ✅ للموبايل والتابلت
    final bool hoverEffect = isDesktop && isHover;

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => widget.project.links != null
          ? openURL(widget.project.links!)
          : null,
      onHover: (hovering) {
        if (isDesktop) {
          setState(() => isHover = hovering);
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
        width: isDesktop ? 30.w : 85.w,
        height: isDesktop ? 36.h : 42.h,
        decoration: BoxDecoration(
          gradient: hoverEffect
              ? pinkpurple
              : (isTouchDevice ? grayBack : grayBack),
          borderRadius: BorderRadius.circular(16),
          boxShadow:
          hoverEffect ? [primaryColorShadow] : [blackColorShadow],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            // الخلفية (البانر)
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: hoverEffect ? 0.1 : 1.0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(widget.project.banners),
                    fit: BoxFit.fill,
                    colorFilter: isTouchDevice
                        ? ColorFilter.mode(
                      Colors.black.withOpacity(0.45),
                      BlendMode.darken,
                    )
                        : null,
                  ),
                ),
              ),
            ),

            // المحتوى
            Padding(
              padding: hoverEffect
                  ? const EdgeInsets.all(20)
                  : EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    widget.project.icons,
                    height: isTouchDevice ? height * 0.05 : height * 0.05,
                  ),
                  SizedBox(height: height * 0.01),

                  // العنوان
                  Text(
                    widget.project.titles,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: isTouchDevice ? 10.sp : 10.sp,
                      color: hoverEffect || isTouchDevice
                          ? whiteColor
                          : theme.textColor,
                    ),
                  ),

                  SizedBox(height: height * 0.01),

                  // الوصف
                  SizedBox(
                    width: width * 0.7, // ✅ يحد عرض النص داخل الكارد
                    child: Text(
                      widget.project.description,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4, // ✅ يمنع الخروج من الكارد
                      style: TextStyle(
                        fontSize: isTouchDevice ? 9.sp : 9.sp,
                        color: hoverEffect || isTouchDevice
                            ? whiteColor
                            : theme.textColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
