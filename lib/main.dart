import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_change/cubits/theme_change/theme_change_state.dart';
import 'package:theme_change/pages/home.dart';

import 'cubits/theme_change/theme_change_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => ThemeChangeCubit())],
      child: BlocBuilder<ThemeChangeCubit, ThemeChangeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Theme Chnage',
            theme: state.theme,
            home: Home(),
          );
        },
      ),
    );
  }
}
