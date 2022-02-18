import 'package:cat_fact_app/controller/cat_fact_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatFactView extends StatelessWidget {
  const CatFactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CatFactController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cat Fact App"),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Obx(() {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/cat.png'),
                Text(
                  controller.catFact.value.fact.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () => controller.getCatFact(),
                  child: const Text("Get Fact"),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
