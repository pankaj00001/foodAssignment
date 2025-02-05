import 'package:assignment/config/component/network_image_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import '../../../model/food_list_model.dart';

class BannerRecycleView extends StatelessWidget {
  final List<Datum> bannerData;
  const BannerRecycleView({super.key,required this.bannerData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          viewportFraction: 1.0,
        ),
        items: bannerData
            .map((item) => NetworkImageWidget(
            imageUrl: item.appbannerImage ?? "",
          width: double.infinity,
          height: double.infinity,
          borderRadius: 0,
          iconSize: 50,
          boxFit: BoxFit.fill,
        )
        ).toList(),
      )
    );
  }
}
