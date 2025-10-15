import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/changes/links.dart';

class ContactUtils {
  final String url;
  final IconData icon;

  ContactUtils({required this.url, required this.icon});
}

List<ContactUtils> contactUtils = [
  // ContactUtils(
  //     url: gitHub,
  //     icon: "https://img.icons8.com/ios-glyphs/60/000000/github.png"),
  // ContactUtils(
  //     url: gitlab,
  //     icon: "https://img.icons8.com/color/60/gitlab.png"),
  // ContactUtils(
  //     url: facebook,
  //     icon: "https://img.icons8.com/ios-filled/50/000000/facebook-new.png"),
  ContactUtils(
      url: whatsapp,
      icon: FontAwesomeIcons.whatsapp),
  ContactUtils(
      url: linkedin,
      icon: FontAwesomeIcons.linkedin),
  // ContactUtils(
  //     url: instagram,
  //     icon: "https://img.icons8.com/glyph-neue/64/000000/instagram-new.png"),
];
