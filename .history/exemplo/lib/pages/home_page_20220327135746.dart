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
      body: PageView(
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
        ]
        ],
        
      ),
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
