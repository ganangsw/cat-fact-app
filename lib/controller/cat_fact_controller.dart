import 'package:cat_fact_app/data/cat_fact.dart';
import 'package:cat_fact_app/data/service.dart';
import 'package:get/get.dart';

class CatFactController extends GetxController {
  @override
  void onInit() {
    getCatFact();
    super.onInit();
  }

  var catFact = CatFact().obs;

  void getCatFact() async {
    catFact.value = await ApiService().getCatFact();
  }
}
