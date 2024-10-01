import 'package:country_details_app/pages/home/controller/api/home_api.dart';
import 'package:country_details_app/pages/home/model/country_details_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  HomeApiService homeApiService = HomeApiService();
  var countryList = <CountryDetailElement>[].obs;

  getCountryData() async {
    try {
      isLoading.value = true;
      var response = await homeApiService.fetchCountryData();
      countryList.assignAll(response);
    } catch (e) {
      countryList.assignAll([]);
    } finally {
      isLoading.value = false;
    }
  }
}
