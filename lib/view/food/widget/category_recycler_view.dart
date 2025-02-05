import 'package:assignment/config/component/text_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../config/component/network_image_widget.dart';
import '../../../model/food_list_model.dart';

class CategoryRecyclerView extends StatelessWidget {
  final List<Datum> categoryData;
  final String title;
  const CategoryRecyclerView({super.key,required this.categoryData,required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0,left: 16,bottom: 8),
          child: CommonTextWidget(text: title, fontSize: 16,fontWeight: FontWeight.bold,),
        ),
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.15,
          child: CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 0.3,
            ),
            items: categoryData
                .map((item) => Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: NetworkImageWidget(
                        imageUrl: item.catImage ?? "",
                        width: double.infinity,
                        height: double.infinity,
                        borderRadius: 0,
                        iconSize: 40,
                        boxFit: BoxFit.fill,
                      ),
                    ),
                    CommonTextWidget(
                      text: item.catName ?? "",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      textAlign: TextAlign.center,),
                  ],
                )
            ).toList(),
          ),
        ),
      ],
    );
  }
}
