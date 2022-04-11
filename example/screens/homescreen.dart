library bloc_implementation;

import 'package:bloc_implementation/bloc_implementation.dart' show BlocParent;
import 'package:flutter/material.dart';

import '../blocs/main_bloc.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example App'),
      ),
      body: Column(
        children: <Widget>[
          const Center(
            child: Text('This is a Text'),
          ),
          TextButton(
            onPressed: () {
              BlocParent.of<MainBloc>(context)
                  .controller
                  .sink
                  .add('Button Pressed');
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: const Text('Example Dialog'),
                      content: const Text('Some Content'),
                      actions: <TextButton>[
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('OK')),
                      ],
                    );
                  });
            },
            child: const Text('Show me something!'),
          ),
        ],
      ),
    );
  }
}
