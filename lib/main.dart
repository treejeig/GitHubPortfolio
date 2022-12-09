import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_portfolio/models/global_variables.dart';
import 'package:github_portfolio/modules/home/home_view.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(ProviderScope(child: GitHubPortfolio()));
}

class GitHubPortfolio extends StatelessWidget {
  const GitHubPortfolio({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TreeJeig's GitHub Portfolio",
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: const HomePage(),
    );
  }
}
