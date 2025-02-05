import 'package:flutter/material.dart';

import '../../../config/component/network_image_widget.dart';
import '../../../config/component/text_widget.dart';
import '../../../model/food_list_model.dart';

class VerticalListItems extends StatelessWidget {
  final List<Datum> verticalListData;
  final String title;
  const VerticalListItems({super.key,required this.verticalListData,required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0,left: 16),
          child: CommonTextWidget(text: title, fontSize: 16,fontWeight: FontWeight.bold,),
        ),
        SizedBox(
          height: (MediaQuery.of(context).size.height * 0.3 * verticalListData.length),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: verticalListData.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              Datum item = verticalListData[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
                child: Stack(
                  children: [
                    NetworkImageWidget(
                      imageUrl: item.sellerDetails?.sellerImage ?? "",
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.3 - 16,
                      borderRadius: 16,
                      iconSize: 40,
                      boxFit: BoxFit.fill,
                    ),

                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonTextWidget(
                              text: item.sellerDetails?.sellerName ?? "",
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              textAlign: TextAlign.start,
                            ),
                            CommonTextWidget(
                              text: item.sellerDetails?.sellerAddress ?? "",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              textAlign: TextAlign.start,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
