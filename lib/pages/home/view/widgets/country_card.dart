import 'package:cached_network_image/cached_network_image.dart';
import 'package:country_details_app/pages/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var data = homeController.countryList[index];
        return Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                spreadRadius: 0,
                blurRadius: 1,
                offset: const Offset(0, 0),
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ExpansionTile(
            expansionAnimationStyle: AnimationStyle(
              duration: const Duration(milliseconds: 600),
              reverseCurve: Curves.easeInQuad,
            ),
            shape: const Border(),
            title: Row(
              children: [
                Container(
                  width: 60,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: CachedNetworkImageProvider(
                        data.flags.png,
                      ),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: CachedNetworkImage(
                      imageUrl: data.flags.png,
                      fit: BoxFit.fill,
                      placeholder: (context, url) => Shimmer.fromColors(
                        baseColor: Colors.white,
                        highlightColor: const Color.fromARGB(255, 208, 207, 207)
                            .withOpacity(0.2),
                        child: Container(
                          width: 60,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      errorWidget: (context, url, error) => Container(
                        width: 60,
                        height: 40,
                        color: Colors.red,
                        child: const Icon(Icons.error),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  data.name.common,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                  bottom: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Common Name : ',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          data.name.common,
                          style: const TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Official Name : ',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            data.name.official,
                            style: const TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Text(
                          'Currency  Name : ',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          '${data.currencies.entries.first.value.name} (${data.currencies.entries.first.value.symbol})',
                          style: const TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10);
      },
      itemCount: homeController.countryList.length,
    );
  }
}
