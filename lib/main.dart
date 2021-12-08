import 'package:alquran/data/storage/hive.dart';
import 'package:alquran/routes/routes.dart';
import 'package:alquran/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/alquran_bloc.dart';

Future<void> main() async {
  runApp(const MyApp());

  await HiveDB().initHiveDatabase();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AlquranBloc(),
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
