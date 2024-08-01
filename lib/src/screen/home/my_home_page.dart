import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.black,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.yellow,
                    width: MediaQuery.sizeOf(context).width / 3.0,
                    height: 100,
                  ),
                  Container(
                    color: Colors.red,
                    width: MediaQuery.sizeOf(context).width / 4.0,
                    height: 80,
                  ),
                  Container(
                    color: Colors.green,
                    width: MediaQuery.sizeOf(context).width / 5.0,
                    height: 60,
                  )
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) {
              return Center(
                child: Container(
                  width: MediaQuery.sizeOf(context).width / 2.0,
                  height: MediaQuery.sizeOf(context).width / 2.0,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              );
            },
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ContainerComponent extends StatelessWidget {
  final double heightContainer;
  final double widthContainer;
  final List<Color> colorContainer = [
    Colors.yellow,
    Colors.red,
    Colors.green,
  ];

  ContainerComponent({super.key, required this.widthContainer, required this.heightContainer});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorContainer[],
      width: MediaQuery.sizeOf(context).width / widthContainer,
      height: heightContainer,
    );
  }
}
