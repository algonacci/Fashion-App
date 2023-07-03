import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
        title: const Text(
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
              padding: const EdgeInsets.all(12),
              scrollDirection: Axis.horizontal,
              children: [
                listElement(
                  'assets/images/model-1.jpg',
                  'assets/images/chanellogo.jpg',
                ),
                const SizedBox(
                  width: 10,
                ),
                listElement(
                  'assets/images/model-2.jpg',
                  'assets/images/chanellogo.jpg',
                ),
                const SizedBox(
                  width: 10,
                ),
                listElement(
                  'assets/images/model-3.jpg',
                  'assets/images/chanellogo.jpg',
                ),
                const SizedBox(
                  width: 10,
                ),
                listElement(
                  'assets/images/model-4.jpg',
                  'assets/images/chanellogo.jpg',
                ),
                const SizedBox(
                  width: 10,
                ),
                listElement(
                  'assets/images/model-1.jpg',
                  'assets/images/chanellogo.jpg',
                ),
                const SizedBox(
                  width: 10,
                ),
                listElement(
                  'assets/images/model-2.jpg',
                  'assets/images/chanellogo.jpg',
                ),
                const SizedBox(
                  width: 10,
                ),
                listElement(
                  'assets/images/model-3.jpg',
                  'assets/images/chanellogo.jpg',
                ),
                const SizedBox(
                  width: 10,
                ),
                listElement(
                  'assets/images/model-4.jpg',
                  'assets/images/chanellogo.jpg',
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Material(
              elevation: 5,
              color: Colors.deepPurple.shade200,
              borderRadius: BorderRadius.circular(
                15,
              ),
              child: Container(
                width: double.infinity,
                height: 450,
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              40,
                            ),
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/model-1.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Daisy',
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'A few minutes ago',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.deepPurple,
                          size: 24,
                        ),
                      ],
                    )
                  ],
                ),
              ),
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
              padding: const EdgeInsets.all(12),
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
            ),
            Positioned(
              top: 50,
              left: 45,
              child: Container(
                padding: const EdgeInsets.all(12),
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                      logoPath,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          height: 25,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.deepPurple,
          ),
          child: const Center(
            child: Text(
              'Follow',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
