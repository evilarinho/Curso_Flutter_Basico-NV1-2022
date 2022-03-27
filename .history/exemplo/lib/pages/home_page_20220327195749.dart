//stl

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //stl
  final PageController _pageController = PageController();

  int indexBottonNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(child: Text('AppBar')),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          Column(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Center(
                  child: Text(
                    'Olá Mundo!',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                //shape: BoxShape.circle),
              ),
              //const Text('bla bla')
              Row(
                children: [
                  Container(
                    color: Colors.red,
                    height: 100,
                    width: 100,
                    child: const Center(
                      child: Text(
                        'Container 1',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.purple,
                    height: 100,
                    width: 100,
                    child: const Center(
                      child: Text(
                        'Container 2',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(color: Colors.red),
          Container(color: Colors.yellow)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          onTap: (int page) {
            indexBottonNavigationBar = page;
            _pageController.animateToPage(
              page,
              duration: const Duration(microseconds: 300),
              curve: Curves.ease,
            );
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service_sharp),
              label: 'Item 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service_sharp),
              label: 'Item 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service_sharp),
              label: 'Item 3',
            ),
          ]),
    );
  }
}
