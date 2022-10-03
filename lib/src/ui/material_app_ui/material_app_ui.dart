import 'package:flutter/material.dart';

import '../pages/base/base_page.dart';
import '../styles/thema_style.dart';

class MaterialAppUI extends StatelessWidget {
  const MaterialAppUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeCustom,
      debugShowCheckedModeBanner: false,
      title: 'Clone Whats',
      home: BasePage(),
    );
  }
}
