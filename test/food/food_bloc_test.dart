import 'package:assignment/bloc/food_bloc.dart';
import 'package:assignment/data/response/api_response.dart';
import 'package:assignment/dependency_injection/dependency_injection.dart';
import 'package:assignment/model/dummy_data.dart';
import 'package:assignment/model/food_list_model.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';


class MockFoodApiRepository extends Mock implements FoodApiRepository {}

void main() {
  late FoodBloc foodBloc;
  late FoodApiRepository foodApiRepository;

  setUp(() {
    foodApiRepository = MockFoodApiRepository();
    foodBloc = FoodBloc(foodApiRepository: foodApiRepository);
  });

  tearDown(() {
    foodBloc.close();
  });

  group('FoodBloc FetchFoodList API Tests', () {
    final mockFoodList = mydata;

    test('initial state is loading', () {
      expect(foodBloc.state, FoodState(foodList: ApiResponse.loading()));
    });

    blocTest<FoodBloc, FoodState>(
      'emits loading and then completed when fetchFoodList succeeds',
      setUp: () {
        when(() => foodApiRepository.fetchFoodList())
            .thenAnswer((_) async => mockFoodList);
      },
      build: () => foodBloc,
      act: (bloc) => bloc.add(FoodFetch()),
      expect: () => [
        FoodState(foodList: ApiResponse.loading()),
        FoodState(foodList: ApiResponse.completed(mockFoodList)),
      ],
    );
  });
}