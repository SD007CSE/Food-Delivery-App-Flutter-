import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_drawer_tile.dart';
import 'package:food_delivery_app/pages/settings_page.dart';
import 'package:food_delivery_app/services/auth/auth_service.dart';
import 'package:lottie/lottie.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    void logout() {
      final authService = AuthService();
      authService.signOut();
    }

    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).viewPadding.top + 15),
          Lottie.network(
            'https://lottie.host/e0aefd93-4a4f-4ed6-b061-9a668407f178/0PEmIg9H6v.json',
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTile(
              text: "H O M E",
              icon: Icons.home,
              onTap: () {
                Navigator.pop(context);
              }),
          MyDrawerTile(
              text: "S E T T I N G S",
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              }),
          const Spacer(),
          MyDrawerTile(
              text: "L O G O U T",
              icon: Icons.logout,
              onTap: () {
                Navigator.pop(context);
                logout();
              }),
          SizedBox(height: MediaQuery.of(context).viewPadding.bottom + 25),
        ],
      ),
    );
  }
}
