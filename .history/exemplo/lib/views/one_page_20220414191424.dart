import 'package:exemplo/controllers/posts_controller.dart';
import 'package:exemplo/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  final PostsController _controller = PostsController();
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('build');
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation:
                    Listenable.merge([_controller.posts, _controller.inLoader]),
                builder: (_, __) => _controller.inLoader.value
                    ? const CircularProgressIndicator()
                    : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _controller.posts.value.length,
                        itemBuilder: (_, idx) => ListTile(
                          title: Text(_controller.posts.value[idx].title),
                        ),
                      ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButtonWidget(
                disable: false,
                onPressed: () => callAPI(),
                title: 'Custom BTN',
                titleSize: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
