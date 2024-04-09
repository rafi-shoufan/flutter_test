import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/app/login/cubit/login_cubit.dart';
import 'package:untitled1/prefrences_manager/prefrences_manager.dart';
import 'package:untitled1/resources/color_manager.dart';
import 'package:untitled1/resources/routes_manager.dart';

import 'app/home/cubit/home_cubit.dart';
import 'app/home/model/home_model.dart';
import 'http_manager/end_points.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp( const MyApp());
  await PreferencesManager.init();
  token = PreferencesManager.getData('api_token') ?? '';
  dynamic data =  PreferencesManager.getData('home_model');
  if (data != null) {
    homeModel = HomeModel.fromJson(data);
  }
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(create: (context) => LoginCubit(),),
        BlocProvider<HomeCubit>(create: (context)=>HomeCubit()..getUsers()
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.loginRoute,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: ColorManager.primary),
          useMaterial3: true,
        ),
      ),
    );
  }
}
