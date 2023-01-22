import 'package:flutter/material.dart';
import 'package:meals_app/assets/theme/app_theme.dart';
import 'package:meals_app/routes/app_routes.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget _createItem(IconData icon, String label, void Function() onTap) {
    return ListTile(
      leading: Icon(icon, size: 26),
      title: Text(
        label,
        style: AppTheme.fontStyles.robotoCondensedRegular,
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Drawer(
      child: Column(children: [
        Container(
          height: size.height * 0.2,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          color: AppTheme.colors.secondaryColor,
          alignment: Alignment.bottomRight,
          child: SafeArea(
              child: Text("Vamos Cozinhar ", style: AppTheme.fontStyles.title)),
        ),
        _createItem(Icons.restaurant, "Refeições",
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.home)),
        _createItem(
            Icons.settings,
            "Configurações",
            () =>
                Navigator.of(context).pushReplacementNamed(AppRoutes.settings))
      ]),
    );
  }
}
