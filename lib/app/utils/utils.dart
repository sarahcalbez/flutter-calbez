import 'package:flutter/material.dart';
import 'package:calbez/app/sections/contact/contact.dart';
import 'package:calbez/app/sections/home/home.dart';
import 'package:calbez/app/sections/portfolio/portfolio.dart';
import 'package:calbez/app/sections/services/services.dart';
import 'package:calbez/app/widgets/footer.dart';

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
