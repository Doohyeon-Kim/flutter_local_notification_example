// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_local_notification_example/provider/theme/theme_norifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final  theme = ref.watch(themeProvider);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Folivora Package Test App',
          theme: theme.state,
          home: const MyHomePage(),
        );
  }
}




class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Folivora Home Page"),
      ),
      body: Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
