import 'package:example_of_extension_method/src/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'config/scroll_behavior_modified.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, widget) => ScrollConfiguration(
          behavior: ScrollBehaviorModified(), child: widget!),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomePage(),
    );
  }
}
