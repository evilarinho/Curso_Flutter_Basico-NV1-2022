import 'package:flutter/material.dart';
import 'package:projeto01/controller/home_controller.dart';
import 'package:projeto01/models/post_model.dart';
import 'package:projeto01/repositories/home_repository_imp.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Home')),
      ),
      body: ValueListenableBuilder<List<PostModel>>(
          valueListenable: _controller.posts,
          builder: (_, list, __) {
            return ListView.separated(
              itemCount: list.length,
              itemBuilder: (_, idx) => ListTile(
                leading: Text(list[idx].id.toString()),
                trailing: const Icon(Icons.arrow_forward),
                title: Text(list[idx].title),
              ),
              separatorBuilder: (_, __) => const Divider(),
            );
          }),
    );
  }
}
