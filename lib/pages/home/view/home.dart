import 'package:country_details_app/pages/home/controller/home_controller.dart';
import 'package:country_details_app/pages/home/view/widgets/country_card.dart';
import 'package:country_details_app/pages/home/view/widgets/loading_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        children: [CountryCard(homeController: homeController)],
                      ),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
