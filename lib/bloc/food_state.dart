part of 'food_bloc.dart';

class FoodState extends Equatable {

  const FoodState({
    required this.foodList ,
  }) ;

  final ApiResponse<FoodListModel> foodList  ;

  FoodState copyWith({
    ApiResponse<FoodListModel>? foodList,
  }) {
    return FoodState(
      foodList: foodList ?? this.foodList,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [foodList];

}