//stl

import 'package:exemplo/pages/pageViews/one_page.dart';
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
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('Deivid'),
              accountEmail: Text('deivid@email.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.greenAccent,
                child: Text('D'),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Item 2'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Item 3'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          const OnePage(),
          Container(color: Colors.red),
          Container(color: Colors.yellow)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexBottonNavigationBar,
          onTap: (int page) {
            setState(() {
              indexBottonNavigationBar = page;
            });
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
