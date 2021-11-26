import 'package:alquran/bloc/home_bloc.dart';
import 'package:alquran/routes/routes.dart';
import 'package:alquran/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          canvasColor: colorsWhite,
          appBarTheme: const AppBarTheme(
            backgroundColor: colorsWhite,
            elevation: 0,
          ),
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
