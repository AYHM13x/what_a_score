import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocater() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  // getIt.registerSingleton<QuizRepoImpl>(
  //   QuizRepoImpl(
  //     getIt.get<ApiService>(),
  //   ),
  // );
}
