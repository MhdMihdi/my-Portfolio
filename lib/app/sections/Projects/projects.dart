import 'package:material_ui/material_ui.dart';
import 'projects_desktop.dart';
import 'projects_mobile.dart';
import 'package:my_portfolio/core/res/responsive.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ProjectsMobileTab(),
      tablet: ProjectsMobileTab(),
      desktop: ProjectsDesktop(),
    );
  }
}
