import 'package:country_details_app/pages/home/controller/home_controller.dart';
import 'package:country_details_app/pages/home/view/widgets/country_card.dart';
import 'package:country_details_app/pages/home/view/widgets/loading_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  HomeController homeController = Get.find();
  RxBool isFiltered = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isFiltered.value = !isFiltered.value;
          if (isFiltered.value) {
            homeController.countryList
                .sort((a, b) => a.name.common.compareTo(b.name.common));
          } else {
            homeController.countryList
                .sort((a, b) => b.name.common.compareTo(a.name.common));
          }
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Obx(() {
            return isFiltered.value
                ? Image.asset(
                    'assets/images/close.png',
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    'assets/images/sort_ic.png',
                    fit: BoxFit.cover,
                  );
          }),
        ),
      ),
      body: SafeArea(
        child: Obx(
          () {
            return homeController.isLoading.value
                ? const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [LoadingCard()],
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                        child: Column(
                      children: [
                        Obx(
                          () {
                            return homeController.countryList.isEmpty
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 250),
                                      Center(
                                        child: Image.asset(
                                          'assets/images/empty-box.png',
                                          width: 200,
                                          height: 200,
                                        ),
                                      ),
                                      const Text(
                                        'The Item is Empty',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      )
                                    ],
                                  )
                                : CountryCard(homeController: homeController);
                          },
                        ),
                      ],
                    )),
                  );
          },
        ),
      ),
    );
  }
}
