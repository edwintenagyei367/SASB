import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salvation_army_hymn/utils/app_state.dart';
import 'package:salvation_army_hymn/utils/utils.dart';
import 'homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefUtils = await PreferencesUtils.getInstance();

  runApp(MultiProvider(
    providers: [
      Provider<PreferencesUtils>.value(value: prefUtils),
      ChangeNotifierProvider<AppState>.value(value: prefUtils!.getAppState()),
    ],
    child: Consumer<AppState>(
      builder: (BuildContext context, AppState state, Widget child) {
        final theme = state.isDark! ? ThemeData.dark() : ThemeData();
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme.copyWith(
            textTheme: theme.textTheme.copyWith(
              subtitle1: theme.textTheme.subtitle1!.copyWith(
                  fontSize: state.fontSize!.toDouble(),
                  fontWeight: FontWeight.w300),
            ),
          ),
          home: Homepage(),
        );
      },
    ),
  ));
}


