import 'dart:developer';
import 'package:country_details_app/pages/home/model/country_details_model.dart';
import 'package:country_details_app/utils/connection_failed.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class HomeApiService {
  var dio = Dio(BaseOptions());
  static const List<String> urls = [
    'https://restcountries.com/v3.1/translation/germany',
    'https://restcountries.com/v3.1/translation/india',
    'https://restcountries.com/v3.1/translation/israel',
    'https://restcountries.com/v3.1/translation/lanka',
    'https://restcountries.com/v3.1/translation/italy',
    'https://restcountries.com/v3.1/translation/china',
    'https://restcountries.com/v3.1/translation/korea',
  ];

  Future<List<CountryDetailElement>> fetchCountryData() async {
    List<CountryDetailElement> countries = [];

    if (await internetCheckConnection()) {
      try {
        for (String url in urls) {
          var response = await dio.request(
            url,
            options: Options(
              method: 'GET',
            ),
          );
          if (response.statusCode == 200) {
            var data = response.data;

            if (data is List) {
              countries.addAll(data
                  .map((item) => CountryDetailElement.fromJson(item))
                  .toList());
            } else {
              throw Exception('Response error');
            }
          } else {
            throw Exception('Failed to load country data');
          }
        }

        log('The list length is ${countries.length}');
      } catch (e) {
        log('Error: $e');
        rethrow;
      }
      return countries;
    } else {
      return [];
    }
  }

  internetCheckConnection() async {
    bool status = await InternetConnectionChecker().hasConnection;
    if (status) {
      log("Internet Connected........");
    } else {
      log("Internet Not Connected........");
      Get.to(const ConnectionFailed());
    }
    return status;
  }
}
