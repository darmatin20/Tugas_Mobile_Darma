import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final PageController pageController;

  int pageNo = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  bool showBtmAppBr = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 36.0,
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: ListTile(
                  onTap: () {},
                  selected: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                  selectedTileColor: Colors.indigoAccent.shade100,
                  title: Text(
                    "Welcome Back",
                    style: Theme.of(context).textTheme.subtitle1!.merge(
                          const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.0,
                          ),
                        ),
                  ),
                  subtitle: Text(
                    "Darmawati",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: GridB(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: showBtmAppBr
          ? FloatingActionButtonLocation.centerDocked
          : FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: AnimatedContainer(
        child: BottomAppBar(
          notchMargin: 8.0,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home_outlined,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.heart,
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.cart,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.bell,
                ),
              ),
            ],
          ),
        ),
        duration: const Duration(
          milliseconds: 800,
        ),
        curve: Curves.easeInOutSine,
        height: showBtmAppBr ? 70 : 0,
      ),
    );
  }
}

class PopUpMen extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget? icon;
  const PopUpMen({Key? key, required this.menuList, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      itemBuilder: ((context) => menuList),
      icon: icon,
    );
  }
}

class FabExt extends StatelessWidget {
  const FabExt({
    Key? key,
    required this.showFabTitle,
  }) : super(key: key);

  final bool showFabTitle;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      label: AnimatedContainer(
        duration: const Duration(seconds: 2),
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            const Icon(CupertinoIcons.cart),
            SizedBox(width: showFabTitle ? 12.0 : 0),
            AnimatedContainer(
              duration: const Duration(seconds: 2),
              child: showFabTitle ? const Text("Go to cart") : const SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}

class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Gamma shoes with beta brand.",
      "price": "\$275",
      "images":
          "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "Alpha t-shirt for alpha testers.",
      "price": "\$25",
      "images":
          "https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "Gamma shoes with beta brand.",
      "price": "\$275",
      "images":
          "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "Alpha t-shirt for alpha testers.",
      "price": "\$25",
      "images":
          "https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "Gamma shoes with beta brand.",
      "price": "\$275",
      "images":
          "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "Alpha t-shirt for alpha testers.",
      "price": "\$25",
      "images":
          "https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "Gamma shoes with beta brand.",
      "price": "\$275",
      "images":
          "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "Alpha t-shirt for alpha testers.",
      "price": "\$25",
      "images":
          "https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "Gamma shoes with beta brand.",
      "price": "\$275",
      "images":
          "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "Alpha t-shirt for alpha testers.",
      "price": "\$25",
      "images":
          "https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "Gamma shoes with beta brand.",
      "price": "\$275",
      "images":
          "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
    {
      "title": "Alpha t-shirt for alpha testers.",
      "price": "\$25",
      "images":
          "https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 1,
        mainAxisExtent: 200,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Image.network(
                "${gridMap.elementAt(index)['images']}",
                height: 170,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ],
        );
      },
    );
  }
}
