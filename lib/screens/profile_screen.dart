import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/themes/theme_notifier.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: colors.primary,
          title: const Text('Profile'),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                child: Icon(Icons.person),
              ),
            )
          ],
        ),
        body: Center(
          child: Consumer<ThemeNotifier>(
            builder: (context, notifier, _) {
              return SwitchListTile(
                  title: const Text('Modo oscuro'),
                  value: notifier.isDark,
                  onChanged: (value) {
                    notifier.toggleBrightness(value);
                  });
            },
          ),
        ));
  }
}
