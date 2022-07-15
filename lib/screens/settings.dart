import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salvation_army_hymn/utils/utils.dart';
import 'package:salvation_army_hymn/utils/app_state.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late AppState appState;
  late PreferencesUtils _preferencesUtils;

  void dispose() {
    _preferencesUtils.saveAppState(appState);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    appState = Provider.of<AppState>(context);
    _preferencesUtils = Provider.of<PreferencesUtils>(context);
    final theme = Theme.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Settings',
            style: TextStyle(fontFamily: "Times New Romans", fontSize: 20),
            //style: theme.textTheme.title.copyWith(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple[900],
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 8),
                child: Text(
                  "Fonts Size",
                  style: theme.textTheme.subtitle1,
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Slider(
                      value: appState.fontSize!.toDouble(),
                      max: 32,
                      min: 14,
                      divisions: 32 - 14,
                      onChanged: (value) {
                        appState.fontSize = value.toInt();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      appState.fontSize!.round().toString(),
                      style: theme.textTheme.headline1,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              SwitchListTile(
                value: appState.isDark!,
                title: Text(
                  "Dark Theme",
                  style: theme.textTheme.subtitle1,
                ),
                onChanged: (value) {
                  appState.isDark = value;
                },
              )
            ],
          ),
        ));
  }
}
