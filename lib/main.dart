import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpinKit(),
    );
  }
}

class SpinKit extends StatelessWidget {
  const SpinKit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'S P I N K I T',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('L O A D I N G . . . ',style: TextStyle(
              fontSize: 20
            ),),
          ),
          const SizedBox(height: 50,),
          SpinKitFadingCube(
            
            size: 50,
            itemBuilder: (BuildContext context, int index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                    color: index.isEven ? Colors.red : Colors.blue),
              );
            },
          )
        ],
      ),
    );
  }
}
