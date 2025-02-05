import 'package:assignment/model/food_list_model.dart';

abstract class FoodApiRepository {
  Future<FoodListModel> fetchFoodList();
}