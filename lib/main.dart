import 'package:fashion_app/detail_page.dart';
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

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(
                Icons.more,
                color: Colors.purple.withOpacity(
                  0.3,
                ),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.purple.withOpacity(
                  0.3,
                ),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.navigation,
                color: Colors.purple.withOpacity(
                  0.3,
                ),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.purple.withOpacity(
                  0.3,
                ),
              ),
            ),
          ],
        ),
      ),
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
              borderRadius: BorderRadius.circular(
                15,
              ),
              child: Container(
                width: double.infinity,
                height: 480,
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
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'lorem ipsum dolor sit amet,',
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                    img: 'assets/images/big-1.jpg',
                                  ),
                                ),
                              );
                            },
                            child: Hero(
                              tag: 'assets/images/big-1.jpg',
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/big-1.jpg',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => DetailPage(
                                        img: 'assets/images/big-2.jpg',
                                      ),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: 'assets/images/big-2.jpg',
                                  child: Container(
                                    height: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/images/big-2.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => DetailPage(
                                        img: 'assets/images/big-3.jpg',
                                      ),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: 'assets/images/big-3.jpg',
                                  child: Container(
                                    height: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/images/big-3.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                            color: Colors.deepPurple.withOpacity(
                              0.3,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '#Lorem Ipsum',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                            color: Colors.deepPurple.withOpacity(
                              0.3,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '#Lorem',
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.replay_sharp,
                          color: Colors.deepPurple,
                          size: 22,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('2,1k'),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.comment,
                          color: Colors.deepPurple,
                          size: 22,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('100'),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 22,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('200'),
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
