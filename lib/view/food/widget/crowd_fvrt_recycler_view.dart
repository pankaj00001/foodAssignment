import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../config/component/network_image_widget.dart';
import '../../../config/component/text_widget.dart';
import '../../../model/food_list_model.dart';

class CrowdFvrtRecyclerView extends StatelessWidget {
  final List<Datum> crowdFvrtData;
  final String title;
  const CrowdFvrtRecyclerView({super.key,required this.crowdFvrtData,required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0,left: 16,bottom: 10),
          child: CommonTextWidget(text: title, fontSize: 16,fontWeight: FontWeight.bold,),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: CarouselSlider.builder(
            options: CarouselOptions(
              enableInfiniteScroll: false,
              viewportFraction: 1.0,
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            itemCount: (crowdFvrtData.length / 3).ceil(),
            itemBuilder: (context, index, realIndex) {
              int startIndex = index * 3;
              int endIndex = (startIndex + 3) > crowdFvrtData.length ? crowdFvrtData.length : (startIndex + 3);
              List<Datum> itemsToShow = crowdFvrtData.sublist(startIndex, endIndex);

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: itemsToShow.map((item) => Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: NetworkImageWidget(
                            imageUrl: item.image ?? "",
                            width: double.infinity,
                            height: double.infinity,
                            borderRadius: 8,
                            iconSize: 40,
                            boxFit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(height: 4),
                        CommonTextWidget(
                          text: item.productName ?? "",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )).toList(),
              );
            },
          ),
        ),
      ],
    );
  }
}
