import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/bloc/theme_cubit.dart';
import 'package:flutter_final_project/bloc/theme_state.dart';
import 'package:flutter_final_project/pages/anime_season_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: state.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              appBarTheme: AppBarTheme(
                backgroundColor: Colors.lightBlue,
                foregroundColor: Colors.white
              ),
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              appBarTheme: AppBarTheme(
                backgroundColor: const Color.fromARGB(255, 0, 80, 146),
                foregroundColor: Colors.white
              ),
            ),
            home: AnimeSeasonPage(),
          );
        },
      ),
    );
  }
}
