import 'package:assignment/bloc/food_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/component/internet_exception_widget.dart';

class FoodErrorWidget extends StatelessWidget {
  const FoodErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodBloc, FoodState>(
      buildWhen: (previous, current) => previous.foodList != current.foodList,
      builder: (context, state) {
        // Checking if the error message indicates no internet connection
        if (state.foodList.message.toString() == "Exception: No Internet Connection") {
          // Displaying InternetExceptionWidget if there's no internet connection
          return InterNetExceptionWidget(onPress: () {
            // Dispatching PostFetched event to trigger fetching movies data
            context.read<FoodBloc>().add(FoodFetch());
          });
        } else {
          // Displaying error message as a clickable text if it's not related to internet connection
          return InkWell(
            onTap: () {
              // Dispatching PostFetched event to trigger fetching movies data
              context.read<FoodBloc>().add(FoodFetch());
            },
            child: Center(
              child: Text(state.foodList.message.toString()),
            ),
          );
        }
      },
    );
  }
}