import 'package:material_ui/material_ui.dart';

class DrawerProvider extends ChangeNotifier {
  final scafoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get key => scafoldKey;
}
