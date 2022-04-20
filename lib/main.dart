import 'package:cllientserver/data/model/article.dart';
import 'package:cllientserver/data/ui/articel_web_view.dart';
import 'package:cllientserver/data/ui/article_detail_page.dart';
import 'package:cllientserver/data/ui/article_list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ArticleListPage(),
        '/article_detail': (context) => ArticleDetailPage(
            ModalRoute.of(context)?.settings.arguments as Article),
      },
    );
  }
}
