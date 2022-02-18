import 'package:cat_fact_app/controller/cat_fact_controller.dart';
import 'package:cat_fact_app/view/cat_fact_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => CatFactController());

    return GetMaterialApp(
      title: 'Cat Fact App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const CatFactView(),
    );
  }
}
