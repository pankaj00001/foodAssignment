import 'package:assignment/repository/food_api/food_api_repository.dart';

import '../../data/network/network_api_service.dart';
import '../../model/food_list_model.dart';
import '../../utils/appUrl.dart';

class FoodHttpApiRepository implements FoodApiRepository {
  final _apiServices = NetworkApiService();

  /// Fetches the list of food list from the API.
  ///
  /// Returns a [FoodListModel] representing the list of movies.
  @override
  Future<FoodListModel> fetchFoodList() async {
    var body = {
      "added_by_web" : "food.56testing.club",
      "service_id" : 2,
      "user_id":1
    };
    final response = await _apiServices.postApi(AppUrl.foodEndPint,body);
    return FoodListModel.fromJson(response);
  }
}