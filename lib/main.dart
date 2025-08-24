import 'package:flutter/material.dart';
import 'recipe.dart';
import ' recipe_detail.dart';

void main() {
  runApp(const RecipesApp());
}

class RecipesApp extends StatelessWidget {
  const RecipesApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: theme.copyWith(

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.greenAccent,
          foregroundColor: Colors.white,
        ),
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RecipeDetail(recipe: Recipe.samples[index]);
                    },
                  ),
                );
              },
              child: buildRecipeCard(Recipe.samples[index]),
            );
          },
        ),
      ),
    );
  }

Widget buildRecipeCard(Recipe recipe) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),

            const SizedBox(
              height: 20,
            ),

            Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                fontFamily: 'Palatine',
              ),
            )
          ],
        ),
      ),
    );
  }
  }

