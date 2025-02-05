import 'package:assignment/repository/food_api/food_api_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/response/api_response.dart';
import '../model/food_list_model.dart';

part 'food_state.dart';
part 'food_event.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  FoodApiRepository foodApiRepository;
  FoodBloc({required this.foodApiRepository}) : super(FoodState(foodList: ApiResponse.loading())) {
    on<FoodFetch>(fetchFoodListApi);
  }

  Future<void> fetchFoodListApi(FoodFetch event, Emitter<FoodState> emit) async {
    emit(state.copyWith(foodList: ApiResponse.loading()));

    await foodApiRepository.fetchFoodList().then((response) {
      emit(state.copyWith(
        foodList: ApiResponse.completed(response),
      ));
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print(stackTrace);
        print(error);
      }
      emit(state.copyWith(
        foodList: ApiResponse.error(error.toString()),
      ));
    });
  }
}