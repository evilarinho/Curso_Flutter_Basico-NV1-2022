import 'dart:convert';

import 'package:exemplo/models/posts_model.dart';
import 'package:exemplo/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class OnePage extends StatefulWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  ValueNotifier<List<Post>> posts = ValueNotifier<List<Post>>([]);
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

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
                animation: Listenable.merge([posts, inLoader]),
                builder: (_, __) => inLoader.value
                    ? const CircularProgressIndicator()
                    : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: posts.value.length,
                        itemBuilder: (_, idx) => ListTile(
                          title: Text(posts.value[idx].title),
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
