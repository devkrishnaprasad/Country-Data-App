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
      for (String url in urls) {
        try {
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
              log('Response error for URL: $url');
            }
          } else {
            log('Failed to load country data from URL: $url with status code: ${response.statusCode}');
          }
        } catch (e) {
          log('Error fetching data from URL: $url - $e');
        }
      }
      return countries;
    } else {
      log('No internet connection');
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
