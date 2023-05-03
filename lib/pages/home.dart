import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_change/cubits/theme_change/theme_change_cubit.dart';

class Home extends StatelessWidget {
  Home({super.key});

  // late bool themeChange = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<ThemeChangeCubit>().toggleTheme();
            },
            icon: Icon(Icons.dark_mode),
          )
        ],
      ),
    );
  }
}
