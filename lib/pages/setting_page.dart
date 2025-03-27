import 'package:flutter/material.dart';
import 'package:flutter_final_project/bloc/language_cubit.dart';
import 'package:flutter_final_project/bloc/language_state.dart';
import 'package:flutter_final_project/bloc/theme_cubit.dart';
import 'package:flutter_final_project/bloc/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/extensions/context_extension.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              if(state.themeMode == ThemeMode.dark) {
                return ListTile(
                  onTap: () {
                    context.read<ThemeCubit>().setThemeMode(ThemeMode.light);
                  },
                  leading: CircleAvatar(child: Icon(Icons.dark_mode)),
                  title: Text('Change Theme'),
                );
              }
              else{
                return ListTile(
                  onTap: () {
                    context.read<ThemeCubit>().setThemeMode(ThemeMode.dark);
                  },
                  leading: CircleAvatar(child: Icon(Icons.light_mode)),
                  title: Text('Change Theme'),
                );
              }
            },
          ),
          BlocBuilder<LanguageCubit, LanguageState>(
            builder: (context, state) {
              if(state.language == 'Jp') {
                return ListTile(
                  onTap: () {
                    context.read<LanguageCubit>().setDisplayLanguage('En');
                  },
                  leading: CircleAvatar(child: Text('Jp')),
                  title: Text('Change Display Language'),
                );
              }
              else{
                return ListTile(
                  onTap: () {
                    context.read<LanguageCubit>().setDisplayLanguage('Jp');
                  },
                  leading: CircleAvatar(child: Text('En')),
                  title: Text('Change Display Language'),
                );
              }
            },
          ),
          ListTile(
            onTap: () {
              context.pop(context);
            },
            leading: CircleAvatar(child: Icon(Icons.arrow_back)),
            title: Text('Go Back'),
          ),
        ],
      ),
    );
  }
}
