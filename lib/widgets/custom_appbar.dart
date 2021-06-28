import 'package:flutter/material.dart';
import 'package:developer_day/utils/constants.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const CustomAppBar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: [
        IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: const Icon(Icons.brightness_4),
            onPressed: () => currentTheme.toggleTheme())
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
