import 'package:assignment/repository/food_api/food_api_repository.dart';
import 'package:assignment/repository/food_api/food_http_api_repository.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

class ServiceLocator {
  void servicesLocator() {
    getIt.registerLazySingleton<FoodApiRepository>(() => FoodHttpApiRepository()); // Registering FoodHttpApiRepository as a lazy singleton for FoodApiRepository
  }

}