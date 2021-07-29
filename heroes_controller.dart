
import 'package:get/get.dart';
import 'package:sample_finals/models/heroes.dart';
import 'package:sample_finals/services/remote_services.dart';

class DotaHeroListController extends GetxController {
  var heroList = [].obs;
  RxBool isLoading = true.obs;

  void onInit() {
    super.onInit();
    fetchDotaHeroList();
  }

  void fetchDotaHeroList() async {
   var responseBody = await RemoteServices.fetchHeroList();
    isLoading.value = false;
    heroList.value = dotaHeroDataListFromJson(responseBody);
  }
}
