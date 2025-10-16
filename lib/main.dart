import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/util/bloc_observer.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'my_site.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer=MyBlocObserver();
  usePathUrlStrategy();
  runApp(const MySite());
}
