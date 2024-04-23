

import 'package:diabestapp/Core/Database/cache/cache_helper.dart';
import 'package:diabestapp/Core/Database/sqflite_helper/sqflite_helper.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerLazySingleton<SqfliteHelper>(()=>SqfliteHelper());  

}