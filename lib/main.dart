import 'package:advanced_app/data/remote/dio_helper.dart';
import 'package:advanced_app/presentation/presentation_managers/exports.dart';
import 'package:advanced_app/presentation/screens/login/view_model/cubit.dart';
import 'package:advanced_app/presentation/screens/onboarding/view_model/cubit.dart';
import 'package:advanced_app/utities/bloc_observer.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CachHelper.init();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => OnBoardingCubit()),
        BlocProvider(create: (context) => LoginCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: getApplicationTheme(),
        onGenerateRoute: RoutesGenerator.getRoutes,
        initialRoute: Routes.splashRoute,
      ),
    );
  }
}
