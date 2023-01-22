import 'package:flutter/material.dart';
import 'package:meals_app/assets/theme/app_theme.dart';
import 'package:meals_app/models/settings.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen(
      {Key? key, required this.onSettingsChanged, required this.settings})
      : super(key: key);

  final Settings settings;
  final Function(Settings) onSettingsChanged;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late Settings settings;

  @override
  void initState() {
    super.initState();
    settings = widget.settings;
  }

  Widget _createSwitch(String title, String subtitle, bool value,
      void Function(bool) onChanged) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: (value) {
        onChanged(value);
        widget.onSettingsChanged(settings);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Configurações",
            style: AppTheme.fontStyles.raleWayBold,
          ),
          backgroundColor: AppTheme.colors.primaryColor,
        ),
        drawer: const MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Configurações",
                style: AppTheme.fontStyles.raleWayBold,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _createSwitch(
                      "Sem Glutén",
                      "Só exibe refeições sem glutén.",
                      settings.isGlutenFree!,
                      (value) => setState(() {
                            settings.isGlutenFree = value;
                          })),
                  _createSwitch(
                      "Sem lactose",
                      "Só exibe refeições sem sem lactose.",
                      settings.isLactoseFree!,
                      (value) => setState(() {
                            settings.isLactoseFree = value;
                          })),
                  _createSwitch(
                      "Vegana",
                      "Só exibe refeições veganas.",
                      settings.isVegan!,
                      (value) => setState(() {
                            settings.isVegan = value;
                          })),
                  _createSwitch(
                      "Vegetariana",
                      "Só exibe refeições vegetarianas.",
                      settings.isVegetarian!,
                      (value) => setState(() {
                            settings.isVegetarian = value;
                          }))
                ],
              ),
            )
          ],
        ));
  }
}
