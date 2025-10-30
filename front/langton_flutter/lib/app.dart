import 'package:flutter/material.dart';
import 'package:langton_ant/presentation/grid/view/ant_grid_component.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fourmi de Langton',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text('Fourmi de Langton'),
        ),
        body: Center(child: GridBox()),
      ),
    );
  }
}

class GridBox extends StatelessWidget {
  const GridBox({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context).shortestSide;
    if (size == MediaQuery.sizeOf(context).height) {
      size -= 56;
    }
    return SizedBox(
      height: size,
      width: size,
      child: Column(children: [AntGridComponent()]),
    );
  }
}
