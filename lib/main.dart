import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt,
              color: Colors.deepPurple.shade500,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Fashion Design',
          style: TextStyle(
            color: Colors.deepPurple,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.pink.shade300,
            height: 150,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(12),
              scrollDirection: Axis.horizontal,
              children: [
                listElement(
                  'assets/images/model-1.jpg',
                  'assets/images/chanellogo.jpg',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  listElement(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(46),
                image: DecorationImage(
                  image: AssetImage(
                    imagePath,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
