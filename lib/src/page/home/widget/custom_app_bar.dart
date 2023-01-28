import 'package:bookapp/src/settings/settings_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.settingsController});
  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Theme.of(context).colorScheme.secondary,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 0),   
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: Theme.of(context).colorScheme.onSurface,
                  size: 28,
                ),
                hintText: 'Search book here....',
                hintStyle: TextStyle(                                                        
                  fontSize: 18,
                  color: Colors.grey[600],
                )
            ),
          )),
          IconButton(
              onPressed: () {
                settingsController.updateThemeMode(
                  settingsController.themeMode == ThemeMode.light?
                  ThemeMode.dark : ThemeMode.light
                );
              },
              icon: Icon(
                settingsController.themeMode == ThemeMode.light
                    ? Icons.dark_mode_rounded
                    : Icons.light_mode_rounded,
              ))
        ],
      ),
    );
  }
}
