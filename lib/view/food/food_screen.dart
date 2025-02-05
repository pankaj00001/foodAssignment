import 'package:assignment/bloc/food_bloc.dart';
import 'package:assignment/dependency_injection/locator.dart';
import 'package:assignment/model/dummy_data.dart';
import 'package:assignment/view/food/widget/banner_recycle_view.dart';
import 'package:assignment/view/food/widget/category_recycler_view.dart';
import 'package:assignment/view/food/widget/crowd_fvrt_recycler_view.dart';
import 'package:assignment/view/food/widget/error_widget.dart';
import 'package:assignment/view/food/widget/vertical_list_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/response/status.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {

  late FoodBloc foodBloc;

  @override
  void initState() {
    super.initState();
    foodBloc = FoodBloc(foodApiRepository: getIt());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Food list"),
      ),
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (_) => foodBloc..add(FoodFetch()),
        child: BlocBuilder<FoodBloc, FoodState>(
          buildWhen: (previous, current) => previous.foodList != current.foodList,
          builder: (BuildContext context, state) {

            switch (state.foodList.status) {
              case Status.loading:
                return const Center(child: CircularProgressIndicator());
              case Status.error:
                return const FoodErrorWidget();
              case Status.completed:

                print(state.foodList.data);
                if (state.foodList.data == null) {
                  // Widget for displaying no data found message
                  return Center(child: Text("No Data Found"));
                }
                if (state.foodList.data?.statusCode == 400){
                  return Center(
                      child:
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(state.foodList.data?.message.toString() ?? "Something went wrong"),
                      ));
                }
                final foodList = state.foodList.data!;
            // final foodList = mydata;
            return SingleChildScrollView(
              child: Column(
                children: foodList.viewtypeList!.map((viewItem) {
                  switch (viewItem.designtype) {
                    case 'BannerRecView':
                      return BannerRecycleView(bannerData: viewItem.data!);

                    case 'CategoryRecView':
                      return CategoryRecyclerView(
                        categoryData: viewItem.data!,
                        title: viewItem.title ?? "",
                      );

                    case 'OneRowProductGrid':
                      return CrowdFvrtRecyclerView(
                        crowdFvrtData: viewItem.data!,
                        title: viewItem.title ?? "",
                      );

                    case 'VerticalList':
                      return VerticalListItems(
                        verticalListData: viewItem.data!,
                        title: viewItem.title ?? "",
                      );
                    default:
                      return SizedBox(); // If `designType` is unknown, return an empty space.
                  }
                }).toList(),
              ),
            );
              default:
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
