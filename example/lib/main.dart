import 'package:example/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    final theme = ThemeData.light();

    return MaterialApp(
      title: 'Implicitly Animated Reorderable List Example',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(secondary: Colors.amber.shade800),
        dividerTheme: DividerThemeData(
          thickness: 1,
          color: Colors.grey.shade300,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const LanguagePage(),
    );
  }
}
