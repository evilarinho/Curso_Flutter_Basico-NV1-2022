import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final TextEditingController _textEditingController = TextEditingController();

  List<String> tarefas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Lista de Tarefas')),
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
            ),
            SizedBox(
              height: 330,
              child: ListView.builder(
                itemCount: tarefas.length,
                itemBuilder: (context, index) {
                  return Text(tarefas[index]);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          // ignore: avoid_print
          //print(_textEditingController);
          if (_textEditingController.text.isNotEmpty) {
            setState(() {
              tarefas.add(_textEditingController.text);
            });
            _textEditingController.clear();
          }

          // ignore: avoid_print
          print(tarefas);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
