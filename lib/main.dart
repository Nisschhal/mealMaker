import 'package:flutter/material.dart';
import 'package:meal_maker/widget/category-meal.dart';
import 'package:meal_maker/widget/category_item.dart';
import 'package:meal_maker/widget/category_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meal Maker',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.amber,
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
              centerTitle: true,
            ),
      ),
      // home: const MyHomePage(title: 'Meal Maker'),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const CategoryScreen(),
        CategoryMeal.routeName: (ctx) => const CategoryMeal(),
        // '/category-item': (ctx) => CategoryItem(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: CategoryScreen(),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
      //This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
