//stl

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //stl
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(child: Text('AppBar')),
      ),
      body: ,
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
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
