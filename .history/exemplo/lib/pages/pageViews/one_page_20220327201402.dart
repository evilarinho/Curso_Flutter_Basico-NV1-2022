import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          );
  }
}