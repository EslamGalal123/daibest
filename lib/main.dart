import "package:diabestapp/Core/Database/cache/cache_helper.dart";
import "package:diabestapp/Core/Database/cache/constants.dart";
import 'package:diabestapp/Core/Routers/App_Routers.dart';
import "package:diabestapp/Core/Utils/Api_links.dart";
import "package:diabestapp/Core/Utils/App-colors.dart";
import "package:diabestapp/Core/classes/crud.dart";
import "package:diabestapp/Core/services/local_notification_service.dart";
import "package:diabestapp/Core/services/service_locator.dart";
import "package:diabestapp/Core/services/work_manager_service.dart";
import "package:diabestapp/Features/reminder_medicins/presentation/cubit/task_cubit.dart";
import "package:diabestapp/Features/reminder_medicins/presentation/cubit/task_state.dart";
import "package:diabestapp/Features/reminder_medicins/presentation/view/reminder_medicin.dart";
import "package:diabestapp/Localizations/applocalizations.dart";
import "package:diabestapp/Localizations/logic/bloc/applanguage_bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:http/http.dart" as http;
import "package:dio/dio.dart";
import "package:shared_preferences/shared_preferences.dart";
import "package:timezone/timezone.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  await Future.wait(
      [LocalNotificationService.init(), WorkManagerService().init()]);
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    final double fontSize = MediaQuery.of(context).devicePixelRatio;
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => TaskCubit(),
          ),
          BlocProvider(create: (context) => ApplanguageBloc()..add(InitialLanguage()))
        ],
        child: BlocBuilder<ApplanguageBloc, ApplanguageState>(
          builder: (context, state) {
            if(state is AppChangeLanguage){
              String locale =state.languageCode!;
            
            return MaterialApp.router(
                locale: Locale(locale),

              theme: ThemeData(
                  textTheme: TextTheme(
                    titleLarge: TextStyle(
                        fontSize: fontSize * 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: "poppins",
                        color: AppColors.primarycolor),
                    titleMedium: TextStyle(
                        fontSize: fontSize * 9,
                        fontWeight: FontWeight.w500,
                        fontFamily: "poppins",
                        color: AppColors.black1),
                    titleSmall: TextStyle(
                        fontSize: fontSize * 7,
                        fontWeight: FontWeight.w400,
                        fontFamily: "poppins",
                        color: AppColors.black1),
                    bodyMedium: TextStyle(
                        fontSize: fontSize * 8,
                        fontWeight: FontWeight.w500,
                        fontFamily: "poppins",
                        color: AppColors.black1),
                    bodySmall: TextStyle(
                        fontSize: fontSize * 6.5,
                        fontWeight: FontWeight.w400,
                        fontFamily: "poppins",
                        color: AppColors.black2),
                  ),
                  scaffoldBackgroundColor: AppColors.offwhite),
              debugShowCheckedModeBanner: false,
              routerConfig: router,
              supportedLocales: [
                Locale("en"),
                Locale('ar'),
              ],
              localizationsDelegates: [
                Applocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              localeResolutionCallback: (devicelocale, supportedLocales) {
                for (var locale in supportedLocales) {
                  if (devicelocale != null) {
                    if (devicelocale.languageCode == locale.languageCode) {
                      return devicelocale;
                    }
                  }
                }
                return supportedLocales.first;
              },
            );
          }
          return SizedBox.shrink();
          },
        ));
  }
}

