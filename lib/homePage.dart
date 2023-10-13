import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallet/box.dart';
import 'package:wallet/mybutton.dart';
import 'package:wallet/theme_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: MyBox(
          color: Theme.of(context)
              .colorScheme
              .primary, //(Colors.deepPurple[300])!,
          child: MyButton(
            onTap: () {
              Provider.of<ThemeProvider>(context,listen: false).toggleTheme();
            },
            color: Theme.of(context)
                .colorScheme
                .secondary, // (Colors.deepPurple[200])!,
          ),
        ),
      ),
    );
  }
}
